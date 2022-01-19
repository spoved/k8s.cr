class Generator::Writer
  getter generator : Generator
  setter current_file : IO::FileDescriptor? = nil
  property definitions : Array(Definition) = Array(Definition).new

  delegate schema, base, base_dir, base_class, default_allias?, definition_ref, to: @generator

  def initialize(@generator : Generator); end

  private def file : IO::FileDescriptor
    @current_file.not_nil!
  end

  def write(definition : Definition)
    file_path = definition.filename
    STDOUT.puts "Writing: #{file_path}"
    FileUtils.mkdir_p(File.dirname(file_path))
    @current_file = File.open(file_path, "w+")

    class_name = definition.class_name
    properties = definition.parse_properties

    write_preamble
    if !definition.alias_of || !default_allias?(class_name)
      file.puts "module #{base_class}::Types::#{definition.class_name}; end", ""
    end

    write_depends(definition, properties)
    write_block "module #{base_class.lchop("::")}" do
      if definition.alias_of
        file.puts %<alias #{class_name} = #{@generator.definitions[definition.alias_of.not_nil!]}>
      elsif class_name == "ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps"
        write_class(definition, properties)
        write_alias(definition) if !definition.is_list? && definition.is_resource?
      elsif default_allias?(class_name)
        _alias = default_allias?(class_name)
        file.puts %<alias #{class_name} = #{_alias}> unless _alias == class_name
      else
        write_class(definition, properties)
        write_alias(definition) if !definition.is_list? && definition.is_resource?
      end
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

  private def write_class(definition : Definition, properties)
    if properties.nil?
      # return if definition.description =~ /empty spec/
      # puts definition.description
      Log.warn { "No properties found for #{definition.class_name}" }
      file.puts "alias #{definition.class_name} = ::K8S::Object(::JSON::Any)"
      return
    end

    val_types = properties.map(&.[:kind]).map do |kind|
      if kind =~ /::#{base_class}::(.+)\b/
        a = $1
        if default_allias?(a)
          kind = kind.gsub(/::#{base_class}::(.+)\b/, default_allias?(a))
        end
      end
      kind
    end

    if definition.class_name == "ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps"
      val_types.map! { |kind| kind.gsub(/::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps/, "::K8S::Object(ValueType)") }
    end

    val_types << "Nil"
    val_types.uniq!

    # file.puts "AnyHash.define_new klass: #{definition.class_name}, key: Symbol, value: #{val_types.join(" | ")}"
    _v_types = val_types.join(" | ")
    mod = <<-END
      # Namespace holding the types for `#{definition.class_name}`.
      module Types::#{definition.class_name}
        alias ValueType = #{_v_types}
        alias Instance = ::K8S::Object(ValueType)
    END

    write_block(mod) do
      write_properties(properties, true)
    end

    write_description(definition.description)
    write_annotations(definition, properties)

    write_block "class #{definition.class_name} < ::#{base_class}::Types::#{definition.class_name}::Instance" do
      file.puts "include ::#{base_class}::Types::#{definition.class_name}"

      if definition.is_list?
        file.puts "include ::K8S::Kubernetes::Resource::List(::#{base_class}::#{definition.list_kind})"
      elsif definition.is_resource?
        file.puts "include ::K8S::Kubernetes::Resource::Object"
      else
        file.puts "include ::K8S::Kubernetes::Object"
      end

      write_properties(properties)

      write_block "macro finished" do
        file.puts "      ::K8S::Kubernetes::Resource.define_serialize_methods(["
        properties.each do |prop|
          kind = prop[:kind] =~ /\s\|\s/ ? "::Union(#{prop[:kind]})" : prop[:kind]
          file.puts %<        { key: "#{prop[:key]}", accessor: "#{prop[:accessor]}", nilable: #{prop[:nilable]}, read_only: #{prop[:read_only]}, default: #{prop[:default].inspect}, kind: #{kind} },>
        end
        file.puts "      ])"
      end

      # file.puts <<-END
      #   def [](key : Symbol)
      #     dig key.to_s
      #   end

      #   def []?(key : Symbol)
      #     dig? key.to_s
      #   end

      #   def []=(key : Symbol, value : T) forall T
      #     @__hash__[key.to_s] = self.class.deep_cast_value(value)
      #   end
      # END
    end
  end

  private def write_description(description : String?)
    unless description
      file.puts "#  "
      return
    end

    description.lines.each do |line|
      file.puts "# #{line.gsub(URL_REGEX, "[\\k<url>](\\k<url>)")}"
    end
  end

  private def write_annotations(definition : Definition, properties)
    # Define group annotations
    group_versions = definition.x_kubernetes_group_version_kind
    unless group_versions.nil?
      group_versions.each do |ver|
        next if ver.group.nil? || ver.kind.nil? || ver.version.nil?
        file.puts(%<@[::#{base_class.lchop("::")}::GroupVersionKind(group: "#{ver.group}", kind: "#{ver.kind}", version: "#{ver.version}", full: "#{definition.name}")]>)
      end
    end

    # Define property annotations
    unless properties.empty?
      file.puts(%<@[::#{base_class.lchop("::")}::Properties(>)
      properties.each do |prop|
        crystal_name = prop[:accessor]
        file.puts "#{crystal_name}: #{prop.inspect},"
      end
      file.puts ")]"
    end

    # Define action/operation annotations
    definition.each_actions do |path_name, path|
      path.action_map.each do |verb, action|
        next if action.nil?
        action_name = action.x_kubernetes_action

        next if action_name.nil?
        definition.parse_action_operation(path_name, path, verb, action) do |_, args, toplevel|
          file.puts(%<@[::#{base_class.lchop("::")}::Action(name: "#{action_name}", verb: "#{verb}",>)
          file.puts(%< path: "#{path_name}",toplevel: #{toplevel}, >)
          file.puts(%< args: [#{definition.parse_operation_args_string(args).join(",\n")}]>)
          file.puts(")]")
        end
      end
    end
  end

  private def write_properties(properties, _abstract = false)
    properties.each do |prop|
      if _abstract
        write_abstract_property(prop)
      else
        write_property(prop)
      end
    end
  end

  private def write_property(prop)
    _kind = prop[:nilable] ? "#{prop[:kind]}?" : prop[:kind]
    # key = /[^a-zA-Z0-9_]/ === prop[:key] ? prop[:accessor] : prop[:key]
    key = prop[:key]

    write_description(prop[:description])
    write_block "def #{prop[:accessor]} : #{_kind}" do
      file.puts %<self.["#{key}"].as(#{_kind})>
    end

    write_description(":ditto:")
    write_block "def #{prop[:accessor]}! : #{prop[:kind]}" do
      file.puts %<self.["#{key}"].as(#{_kind}).not_nil!>
    end

    write_description(":ditto:")
    write_block "def #{prop[:accessor]}? : #{prop[:kind]}?" do
      file.puts %<self.["#{key}"]?.as(#{prop[:kind]}?)>
    end

    unless prop[:read_only]
      write_description(":ditto:")
      write_block "def #{prop[:accessor]}=(value : #{_kind})" do
        file.puts %<self.["#{key}"] = value>
      end
    end
  end

  private def write_abstract_property(prop)
    _kind = prop[:nilable] ? "#{prop[:kind]}?" : prop[:kind]

    write_description(prop[:description])
    file.puts "abstract def #{prop[:accessor]} : #{_kind}"

    write_description(":ditto:")
    file.puts "abstract def #{prop[:accessor]}! : #{prop[:kind]}"

    write_description(":ditto:")
    file.puts "abstract def #{prop[:accessor]}? : #{prop[:kind]}?"

    unless prop[:read_only]
      write_description(":ditto:")
      file.puts "abstract def #{prop[:accessor]}=(value : #{_kind})"
    end
  end

  private def write_alias(definition : Definition)
    write_block "module #{definition.resource_alias}" do
      file.puts "alias #{definition.kind} = ::#{base_class.lchop("::")}::#{definition.class_name.lchop("::")}"
    end
  end

  private def write_serialize_methods(definition : Definition, properties)
    file.puts "::K8S::Kubernetes::Resource.define_serialize_methods(#{properties.inspect})"
  end
end