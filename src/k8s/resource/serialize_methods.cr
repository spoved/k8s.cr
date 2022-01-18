module ::K8S::Kubernetes::Resource
  macro define_serialize_methods(props)
    def self.new(pull : ::JSON::PullParser)
      hash = new
      pull.read_object do |key, key_location|
        parsed_key = K.from_json_object_key?(key)
        raise ::JSON::ParseException.new("Can't convert #{key.inspect} into #{K}", *key_location) unless parsed_key

        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          parsed_value = {{prop[:kind].id}}.new(pull)
          Log.trace { "Setting #{parsed_key} to #{parsed_value}" }
          hash[{{prop[:key].id.stringify}}] = parsed_value
        {% end %}
        else
          raise ::JSON::ParseException.new("Unknown key #{parsed_key}", *key_location)
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

        # each do |key, value|
        #   json.field key.to_json_object_key do
        #     value.to_json(json)
        #   end
        # end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      hash = new
      unless node.is_a?(::YAML::Nodes::Mapping)
        node.raise "Expected mapping, not #{node.kind}"
      end

      ::YAML::Schema::Core.each(node) do |key, value|
        parsed_key = K.new(ctx, key)
        case parsed_key
        {% for prop in props %}
        when {{prop[:key].id.stringify}} {% if prop[:key] != prop[:accessor] %}, {{prop[:accessor].id.stringify}} {% end %}
          parsed_value = {{prop[:kind].id}}.new(ctx, value)
          Log.trace { "Setting #{parsed_key} to #{parsed_value}" }
          hash[{{prop[:key].id.stringify}}] = parsed_value
        {% end %}
        else
          node.raise "Unknown key #{parsed_key}"
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
