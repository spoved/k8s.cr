class Generator::Writer
  getter generator : Generator
  setter current_file : IO::FileDescriptor? = nil
  property definitions : Array(Definition) = Array(Definition).new

  delegate schema, base, base_dir, base_class, default_allias?, definition_ref, to: @generator

  def initialize(@generator : Generator); end

  private def file : IO::FileDescriptor
    @current_file.not_nil!
  end

  def write(definition : Definition, skip_depends = false)
    file_path = definition.filename
    STDOUT.puts "Writing: #{file_path}"
    FileUtils.mkdir_p(File.dirname(file_path))
    @current_file = File.open(file_path, "w+")

    class_name = definition.class_name
    properties = definition.parse_properties

    write_preamble

    write_depends(definition, properties) unless skip_depends

    if definition.alias_of
      file.puts %<alias #{base_class}::#{class_name} = #{@generator.definitions[definition.alias_of.not_nil!]}>
    elsif class_name == "ApiextensionsApiserver::Apis::Apiextensions::V1::JsonSchemaProps"
      write_class(definition, properties)
      # write_alias(definition) if !definition.is_list? && definition.is_resource?
    elsif default_allias?(class_name)
      _alias = default_allias?(class_name)
      file.puts %<alias #{base_class}::#{class_name} = #{_alias}> unless _alias == class_name
    else
      write_class(definition, properties)
      # write_alias(definition) if !definition.is_list? && definition.is_resource?
    end
  ensure
    @current_file.try &.close
    @current_file = nil
  end

  def write_preamble
    file.puts "# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC"
    file.puts ""
    write_requires
    file.puts ""
  end

  private def write_depends(definition, properties)
    depends = Array(String).new
    if properties
      properties.each do |prop|
        kind = prop[:kind]

        if default_allias?(kind)
          kind = default_allias?(kind).not_nil!
        end

        if kind =~ /::#{base_class}::(.+)\b/
          kind = $1
        end

        ref = definitions.find { |d| d.class_name == kind.gsub(/^::#{base_class}::/, "") }
        if ref
          path = get_req_path(ref.filename, definition.filename)
          depends << path if path
        end
      end

      depends.uniq!.each do |path|
        file.puts %<require "#{path}">
      end

      file.puts
    end
  end

  private def get_req_path(file1, file2)
    file_name = File.basename(file1).chomp(".cr")

    if File.dirname(file1) == File.dirname(file2)
      "./#{file_name}"
    else
      Log.warn { "#{file1} => #{file2}" }
      f1path = File.dirname(file1).split("/")
      f2path = File.dirname(file2).split("/")

      start_at = 0
      f1path.each_with_index do |f1, i|
        if f1 == f2path[i]
          next
        else
          # pp ({i, f1, f1path[i]})
          start_at = i
          break
        end
      end

      File.join(([".."] * (f2path.size - start_at)) + f1path[start_at..-1] + [file_name])
    end
  end

  private def write_requires
    %w(yaml json).each do |req|
      file.puts "require #{req.inspect}"
    end
    file.puts
  end

  private def write_block(line, &block)
    file.puts line
    yield
    file.puts "end"
  end

  private def _property_string(prop)
    _kind = prop[:kind].gsub(/\?+$/, "?")
    if _kind =~ /\|/
      _kind = "Union(#{_kind})"
    end
    typ_def = if !prop[:nilable] && !prop[:default].nil?
                "name: #{prop[:accessor].inspect}, kind: #{_kind}, default: #{prop[:default].inspect}"
              else
                "name: #{prop[:accessor].inspect}, kind: #{_kind}"
              end

    %<{ #{typ_def}, key: "#{prop[:key]}", nilable: #{prop[:nilable].inspect}, read_only: #{prop[:read_only].inspect}, description: #{prop[:description].inspect}}>
  end

  private def _write_generic(definition : Definition, properties)
    kind = definition.class_name.split("::").last
    namespace = base_class + "::" + definition.class_name.chomp(kind).chomp("::")
    file.puts %<
    ::K8S::Kubernetes::Resource.define_object("#{kind}",
      namespace: "::#{namespace}",
      properties: [
    >
    properties.each do |prop|
      file.puts "#{_property_string(prop)},"
    end
    file.puts %<
      ]
    )>
  end

  private def _get_module_path(ver : XKubernetesGroupVersionKind, namespace : String? = nil)
    r_group_full = ver.group.not_nil!
    r_group = r_group_full.split(".").reverse.join(".")
      .gsub(/^(io(\.k8s)?|com)\./, "")
      .gsub(/\.pkg\./, ".")
      .gsub(/JSON/, "Json")
      .gsub(/\-/, "_")

    mod_path = ([base_class] + (r_group + "." + ver.version.not_nil!).split(".")).reject(&.empty?).map(&.camelcase).join("::")

    {
      module_path: namespace.nil? ? mod_path : namespace,
      group:       r_group,
      group_full:  r_group_full,
      kind:        ver.kind,
    }
  end

  private def _write_class_alias(definition : Definition, properties, ver_info : XKubernetesGroupVersionKind, target_info : XKubernetesGroupVersionKind)
    namespace = base_class + "::" + definition.class_name
      .chomp(ver_info.kind.not_nil!).chomp("::")

    alias_info = _get_module_path(ver_info)
    target_info = _get_module_path(target_info, namespace)

    alias_name = [alias_info[:module_path], alias_info[:kind]].join("::")
    target_name = [target_info[:module_path], target_info[:kind]].join("::")

    file.puts "alias #{alias_name} = ::#{target_name}"
  end

  private def _write_class(definition : Definition, properties, ver_info : XKubernetesGroupVersionKind)
    # puts definition.class_name
    namespace = base_class + "::" + definition.class_name
      .chomp(ver_info.kind.not_nil!).chomp("::")
    versions = definition.x_kubernetes_group_version_kind || Array(XKubernetesGroupVersionKind).new

    if definition.is_list?
      file.puts %<
      ::K8S::Kubernetes::Resource.define_resource("#{ver_info.group}", "#{ver_info.version}", "#{ver_info.kind}",
        namespace: "::#{namespace}",
        list: true,
        list_kind: #{base_class}::#{definition.list_kind},
        description: #{definition.description.inspect},
      )
      >
    else
      file.puts %<
      ::K8S::Kubernetes::Resource.define_resource("#{ver_info.group}", "#{ver_info.version}", "#{ver_info.kind}",
        namespace: "::#{namespace}",
        properties: [
      >
      properties.each do |prop|
        next if %w(api_version kind metadata).includes?(prop[:accessor])
        file.puts "#{_property_string(prop)},"
      end
      file.puts %<
        ],
        description: #{definition.description.inspect},
        versions: #{versions.empty? ? nil : versions.map(&.to_t).inspect},
      )>
    end
  end

  private def write_class(definition : Definition, properties)
    if properties.nil?
      # return if definition.description =~ /empty spec/
      # puts definition.description
      Log.warn { "No properties found for #{definition.class_name}" }
      file.puts "alias #{base_class}::#{definition.class_name} = ::K8S::GenericObject"
      return
    end
    # _old_write_class(definition, properties)

    group_versions = definition.x_kubernetes_group_version_kind.dup
    if group_versions.nil?
      _write_generic(definition, properties)
    else
      first = group_versions.shift
      raise "No group version" if first.group.nil? || first.kind.nil? || first.version.nil?
      _write_class(definition, properties, first)

      group_versions.each do |ver|
        raise "No group version" if ver.group.nil? || ver.kind.nil? || ver.version.nil?
        _write_class_alias(definition, properties, ver, first)
      end
    end
  end

  private def write_alias(definition : Definition)
    alias_name = [base_class, definition.resource_alias, definition.kind].join("::")
    file.puts "alias #{alias_name} = ::#{base_class.lchop("::")}::#{definition.class_name.lchop("::")}"
  end
end
