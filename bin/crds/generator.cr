class K8S::CRD::Generator
  getter parsers : Array(K8S::CRD::Parser)
  getter output_dir : String
  getter groups = Array(String).new

  def initialize(files, @output_dir)
    FileUtils.mkdir_p(@output_dir) unless Dir.exists?(@output_dir)
    Log.info { "Generating CRDs from #{files}" }
    @parsers = K8S::Kubernetes::Resource.from_files(files).flat_map do |crd|
      get_parser(crd)
    end.select(K8S::CRD::Parser)
    Log.info { "Found #{@parsers.size} CRDs" }
  end

  private def get_parser(crd)
    Log.debug { "Getting parser for #{crd.class}" }
    case crd
    when K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition
      K8S::CRD::Parser.new(crd)
    when K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionList, K8S::Api::Core::V1::List
      crd.items!.flat_map do |c|
        get_parser(c)
      end
    else
      Log.warn { "Unsupported CRD #{crd.class}" }
      nil
    end
  end

  private def get_swagger(ver)
    swagger = Swagger.new(Swagger::Info.new(title: "Kubernetes API", version: ver))
    parsers.flat_map(&.parse).each do |info|
      self.groups << info[:group] unless groups.includes?(info[:group])

      raise "Definition already exists: #{info[:full]}" if swagger.definitions[info[:full]]?
      swagger.definitions[info[:full]] = info[:definition]
      info[:definitions].each do |name, definition|
        next if name == info[:full]
        raise "Definition already exists: #{name}" if swagger.definitions[name]?
        swagger.definitions[name] = definition
      end

      info[:paths].each do |path, methods|
        raise "Path already exists: #{path}" if swagger.paths[path]?
        swagger.paths[path] = methods
      end
    end
    swagger
  end

  def generate
    swagger = get_swagger("v1.23")
    data, _ = latest_patch_for("v1.23", 0..0, true)
    if data.is_a?(String)
      api_groups = self.groups.map &.split('.').reverse.join('.')

      Log.info { "Generating CRDs for #{api_groups}" }
      k3sgen = ::Generator.new(data, "v1.23")
      swagger.definitions.merge!(k3sgen.schema.definitions)
      crdgen = ::Generator.new(swagger, "K8S", output_dir, api_groups)

      # populate lists
      crds = crdgen.definitions.select { |k, _| !(api_groups.find { |g| k =~ /#{g}/ }.nil?) }
      crds.each do |k, v|
        unless k.ends_with?("List")
          if crdgen.schema.definitions[k].x_kubernetes_group_version_kind.nil?
            Log.debug { "Skipping list gen for: #{k}" }
          else
            Log.debug { "Adding resource list #{v}List" }
            crdgen.definitions["#{k}List"] = "#{v}List"
            crdgen.schema.definitions["#{k}List"] = Swagger::Definition.new.tap do |list_def|
              template = crdgen.schema.definitions["io.k8s.api.core.v1.List"]
              list_def.properties = template.properties.dup
              list_def.properties["items"] = Swagger::Definition::Property.new(
                description: "list of resources",
                type: "array",
                items: Swagger::Definition::Property.new(_ref: "#/definitions/#{k}")
              )
              unless crdgen.schema.definitions[k].x_kubernetes_group_version_kind.nil?
                list_def.x_kubernetes_group_version_kind = [XKubernetesGroupVersionKind.new(
                  crdgen.schema.definitions[k].x_kubernetes_group_version_kind.not_nil!.first.group,
                  "#{crdgen.schema.definitions[k].x_kubernetes_group_version_kind.not_nil!.first.kind}List",
                  crdgen.schema.definitions[k].x_kubernetes_group_version_kind.not_nil!.first.version,
                )]
              end
            end
          end
        end
      end
      crdgen.generate
    else
      Log.error { "No patch data found for v1.23" }
    end
  end
end
