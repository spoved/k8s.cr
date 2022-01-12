class Generator::Writer
  getter generator : Generator
  setter current_file : IO::FileDescriptor? = nil

  delegate schema, definitions, base, base_dir, base_class, default_allias?, definition_ref, to: @generator

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

    write_preamble
    write_block "module #{base_class.lchop("::")}" do
      if definition.alias_of
        file.puts %<alias #{class_name} = #{@generator.definitions[definition.alias_of.not_nil!]}>
      elsif default_allias?(class_name)
        _alias = default_allias?(class_name)
        file.puts %<alias #{class_name} = #{_alias}> unless _alias == class_name
      else
        write_class(definition)
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

  private def write_requires
    %w(yaml json any_hash).each do |req|
      file.puts "require #{req.inspect}"
    end
    file.puts
  end

  private def write_block(line, &block)
    file.puts line
    yield
    file.puts "end"
  end

  private def write_class(definition : Definition)
    properties = definition.parse_properties
    if properties.nil?
      return if definition.description =~ /empty spec/
      # puts definition.description
      Log.warn { "No properties found for #{definition.class_name}" }
      return
    end

    val_types = properties.map(&.[:kind])

    val_types << "Nil"
    val_types.uniq!

    file.puts "AnyHash.define_new klass: #{definition.class_name}, key: Symbol, value: #{val_types.join(" | ")}"

    write_description(definition.description)
    write_annotations(definition, properties)

    write_block "class #{definition.class_name}" do
      file.puts "include ::K8S::Kubernetes::Object"
      file.puts "include ::K8S::Kubernetes::Resource" if definition.is_resource?
      file.puts "include ::K8S::Kubernetes::Resource::List" if definition.is_list?

      write_properties(properties)
    end
  end

  private def write_description(description : String?)
    return unless description
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

  private def write_properties(properties)
    properties.each do |prop|
      _kind = prop[:nilable] ? "#{prop[:kind]}?" : prop[:kind]
      # key = /[^a-zA-Z0-9_]/ === prop[:key] ? prop[:accessor] : prop[:key]
      key = prop[:accessor]

      write_description(prop[:description])
      write_block "def #{prop[:accessor]} : #{_kind}" do
        file.puts "self.[:#{key}].as(#{_kind})"
      end

      unless prop[:read_only]
        write_description(prop[:description])
        write_block "def #{prop[:accessor]}=(value : #{_kind})" do
          file.puts "self.[:#{key}] = value"
        end
      end
    end
  end

  private def write_alias(definition : Definition)
    write_block "module #{definition.resource_alias}" do
      file.puts "alias #{definition.kind} = ::#{base_class.lchop("::")}::#{definition.class_name.lchop("::")}"
    end
  end
end
