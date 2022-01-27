abstract class ::K8S::Kubernetes::Resource
  macro define_serialize_methods(props)

    # :nodoc:
    def __set_property(name, value : G, nilable = true) forall G
      Log.trace { %<Setting key: "#{name}" to value: #{value.inspect}> }
      self.[name] = value
    end


    def self.new(pull : ::JSON::PullParser)
      hash = new
      pull.read_object do |key, key_location|
        parsed_key = String.from_json_object_key?(key)
        raise ::JSON::ParseException.new("Can't convert #{key.inspect} into String", *key_location) unless parsed_key
        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          parsed_value = if {{prop[:kind].id}} >= Time
              K8S::TimeFormat.new.from_json(pull)
            else
              {{prop[:kind].id}}.new(pull)
            end
          hash.__set_property({{prop[:key].id.stringify}}, k8s_cast_type(parsed_value, {{*prop[:kind].resolve.union_types}}, Nil), {{prop[:nilable]}})
        {% end %}
        else
          Log.trace { "JSON::ParseException - Unknown key #{parsed_key} for #{self}" }
          pull.skip
        end
      end

      hash
    end

    def to_json(json : ::JSON::Builder) : Nil
      json.object do
        {% for prop in props %}
        json.field {{prop[:key].id.stringify}}.to_json_object_key do
           {{prop[:accessor].id}}.to_json(json)
        end
        {% end %}

        # TODO: Handle unmapped keys
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      hash = new
      unless node.is_a?(::YAML::Nodes::Mapping)
        node.raise "Expected mapping, not #{node.kind}"
      end

      ::YAML::Schema::Core.each(node) do |key, value|
        parsed_key = String.new(ctx, key)
        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          parsed_value = if {{prop[:kind].id}} >= Time
              if value.is_a?(YAML::Nodes::Scalar) && value.value == "null"
                nil
              else
                K8S::TimeFormat.new.from_yaml(ctx, value)
              end
            else
              {{prop[:kind].id}}.new(ctx, value)
            end
            hash.__set_property({{prop[:key].id.stringify}}, k8s_cast_type(parsed_value, {{*prop[:kind].resolve.union_types}}, Nil), {{prop[:nilable]}})

        {% end %}
        else
          # node.raise "Unknown key #{parsed_key}"
          Log.trace { "YAML::ParseException - Unknown key #{parsed_key} for #{self}" }
        end
      end
      hash
    end

    def to_yaml(yaml : ::YAML::Nodes::Builder) : Nil
      yaml.mapping(reference: self) do
        {% for prop in props %}
        {{prop[:key].id.stringify}}.to_yaml(yaml)
        {{prop[:accessor].id}}.to_yaml(yaml)
        {% end %}

        # TODO: Handle unmapped keys

        # each do |key, value|
        #   key.to_yaml(yaml)
        #   value.to_yaml(yaml)
        # end
      end
    end
  end
end
