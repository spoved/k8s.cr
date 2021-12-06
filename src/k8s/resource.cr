require "json"
require "yaml"

annotation ::K8S::Properties; end

abstract class ::K8S::Kubernetes::Resource
  macro inherited
    {% if @type.annotation(::K8S::Properties) %}
    {% anno = @type.annotation(::K8S::Properties) %}

    def to_h
      puts "to_h #{self.class}"
      {
      {% for prop, value in anno.named_args %}
        {% if value[:type].is_a?(::K8S::Kubernetes::Resource) %}
        {{prop.stringify}} => @{{prop.id}}.nil? ? nil : @{{prop.id}}.not_nil!.to_h,
        {% else %}
        {{prop.stringify}} => @{{prop.id}},
        {% end %}
      {% end %}
      }
    end

    def merge(other)
      Log.info { "Merging #{self.class.name} with #{other.class.name}" }

      copy = self.to_h
      case other
      when Hash
        {% for prop, value in anno.named_args %}
          copy[{{prop.stringify}}] = other[:{{prop}}] if other.has_key?(:{{prop}})
          copy[{{prop.stringify}}] = other[{{prop.stringify}}] if other.has_key?({{prop.stringify}})
        {% end %}
      when {{@type.id}}
          other_hash = other.to_h
          {% for prop, value in anno.named_args %}
            copy[{{prop.stringify}}] = other_hash[:{{prop}}] if other_hash.has_key?(:{{prop}})
            copy[{{prop.stringify}}] = other_hash[{{prop.stringify}}] if other_hash.has_key?({{prop.stringify}})
          {% end %}
      else
        raise "Cannot merge {{@type.id}} with #{other.class}"
      end
      copy
    end

    def self.from_h(hash)
      from_json(hash.to_json)
    end
    {% end %}
  end

  module Object
    abstract def metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ObjectMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ObjectMeta.new
    end
  end

  module List
    abstract def metadata : Apimachinery::Apis::Meta::V1::ListMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ListMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ListMeta.new
    end
  end

  include JSON::Serializable
  include YAML::Serializable

  @[::JSON::Field(key: "apiVersion")]
  @[::YAML::Field(key: "apiVersion")]
  @api_version : String

  abstract def api_version : String
  abstract def kind : String

  def from_file(file)
    Log.trace { "Loading #{file}" }
    from_yaml(File.read(file))
  end
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource

# class ::K8S::Kubernetes::GenericResource < ::K8S::Kubernetes::Resource
#   macro method_missing(call)
#     raise "Unknown method {{call.name.id}} with {{call.args.size}} arguments"
#   end
# end
