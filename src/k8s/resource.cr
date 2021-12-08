require "json"
require "yaml"

annotation ::K8S::Properties; end

abstract class ::K8S::Kubernetes::Resource
  include JSON::Serializable
  include YAML::Serializable

  abstract def api_version : String
  abstract def kind : String

  def from_file(file)
    Log.trace { "Loading #{file}" }
    from_yaml(File.read(file))
  end

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
          copy = copy.deep_merge(other_hash)
      when {{@type.id}}
          other_hash = other.to_h
          copy = copy.deep_merge(other_hash)
      else
        raise "Cannot merge {{@type.id}} with #{other.class}"
      end
      self.class.from_h(copy)
    end

    def self.from_h(hash)
      from_json(hash.to_json)
    end

    {% end %}
  end

  module Object
    abstract def api_version : String
    abstract def kind : String
    abstract def metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ObjectMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ObjectMeta.new
    end
  end

  module List
    abstract def api_version : String
    abstract def kind : String
    abstract def metadata : Apimachinery::Apis::Meta::V1::ListMeta?

    def metadata! : Apimachinery::Apis::Meta::V1::ListMeta
      @metadata ||= Apimachinery::Apis::Meta::V1::ListMeta.new
    end
  end
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
alias ::K8S::ObjectMeta = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
alias ::K8S::ListMeta = ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
alias ::K8S::APIResource = ::K8S::Apimachinery::Apis::Meta::V1::APIResource
alias ::K8S::APIResourceList = ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList
