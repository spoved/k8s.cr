# :nodoc:
struct JSON::Any
  # Convert a YAML object to a JSON document.
  def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
    JSON::Any.from_json YAML::Any.new(ctx, node).to_json
  end
end

# :nodoc:
struct YAML::Any
  # Convert a JSON document to a YAML object.
  def self.new(parser : JSON::PullParser) : YAML::Any
    YAML.parse(JSON.parse(parser.read_raw).to_yaml)
  end
end

module ::K8S::Kubernetes::Resource
  REGISTRY = Array(Tuple(String, String, K8S::Kubernetes::Resource.class)).new

  # Register a resource class.
  macro inherited
    {% if @type.annotation(::K8S::GroupVersionKind) %}
    {% for anno in @type.annotations(::K8S::Properties) %}
    REGISTRY << {
      {{anno[:group]}},
      {{anno[:version]}},
      {{@type.id}}
    }
    {% end %}{% end %}
  end

  macro define_serialize_methods(props)
    def self.new(pull : JSON::PullParser)
      hash = new
      pull.read_object do |key, key_location|
        parsed_key = K.from_json_object_key?(key)
        raise JSON::ParseException.new("Can't convert #{key.inspect} into #{K}", *key_location) unless parsed_key

        case parsed_key
        {% for prop in props %}
        when :{{prop[:key].id}}, {{prop[:key].id.stringify}}, :{{prop[:accessor].id}}, {{prop[:accessor].id.stringify}}
          hash[parsed_key] = {{prop[:kind].id}}.new(pull)
        {% end %}
        else
          raise JSON::ParseException.new("Unknown key #{parsed_key}", *key_location)
        end
      end

      hash
    end

    def to_json(json : JSON::Builder) : Nil
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

    def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
      unless node.is_a?(YAML::Nodes::Mapping)
        node.raise "Expected mapping, not #{node.kind}"
      end

      YAML::Schema::Core.each(node) do |key, value|
        parsed_key = K.new(ctx, key)
        case parsed_key
        {% for prop in props %}
        when :{{prop[:key].id}}, {{prop[:key].id.stringify}}, :{{prop[:accessor].id}}, {{prop[:accessor].id.stringify}}
          yield parsed_key, {{prop[:kind].id}}.new(ctx, value)
        {% end %}
        else
          node.raise "Unknown key #{parsed_key}")
        end
      end
    end

    def to_yaml(yaml : YAML::Nodes::Builder) : Nil
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
