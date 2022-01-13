require "json"
require "yaml"
require "log"
require "../ext/hashdiff"

annotation ::K8S::Properties; end
annotation ::K8S::GroupVersionKind; end
annotation ::K8S::Action; end

module ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResourceList; end

module ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps; end

module ::K8S::Kubernetes
  module Object; end

  # Defines a Kubernetes resource. Resources have API endpoints and are identified by a unique apiVersion and kind.
  module Resource
    abstract def api_version : String
    abstract def kind : String
  end

  module Resource::Object
    include ::K8S::Kubernetes::Resource

    abstract def metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?
  end

  module Resource::List(T)
    include ::K8S::Kubernetes::Resource

    abstract def metadata : Apimachinery::Apis::Meta::V1::ListMeta?
    abstract def items : Array(T)
  end
end

require "./resource/*"

module ::K8S::Kubernetes::Resource
  def self.from_file(file)
    Log.trace { "K8S::Resource: Loading: #{file}" }
    if File.extname(file) == ".json"
      [from_json(File.read(file))]
    else
      nodes = ::K8S::Kubernetes::Resource::YAMLParser.new(File.read(file), &.parse_all_nodes)
      nodes.flat_map { |doc| doc.nodes.map { |n| ::K8S::Resource.new(YAML::ParseContext.new, n) } }
    end
  end

  def self.from_files(*paths)
    paths.flat_map do |path|
      Log.trace { "K8S::Resource: Loading recursivly: #{path}" }
      if File.directory?(path)
        Dir.glob(File.join(path, "**/*.yaml")).flat_map { |file| from_files(file) }
      elsif File.extname(path) == ".yaml" && File.exists?(path)
        from_file(path)
      else
        Array(Resource).new
      end
    end
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
      Log.info { "K8S::Resource: Merging #{self.class.name} with #{other.class.name}" }

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
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
alias ::K8S::ObjectMeta = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
alias ::K8S::ListMeta = ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
alias ::K8S::APIResource = ::K8S::Apimachinery::Apis::Meta::V1::APIResource
alias ::K8S::APIResourceList = ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList
