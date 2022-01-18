require "json"
require "yaml"
require "log"
require "../ext/*"
require "./macros"

annotation ::K8S::Properties; end
annotation ::K8S::GroupVersionKind; end
annotation ::K8S::Action; end

module ::K8S::Kubernetes
  REGISTRY = Array(Tuple(String, String, K8S::Kubernetes::Resource.class)).new

  module Object; end

  # Defines a Kubernetes resource. Resources have API endpoints and are identified by a unique apiVersion and kind.
  module Resource
    include ::K8S::Kubernetes::Object

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

module ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResourceList
  include ::K8S::Kubernetes::Resource
end

module ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
  macro finished
    def self.new(*args, **kwargs)
      ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps.new(*args, **kwargs)
    end

    def self.from_json(string)
      ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps.from_json(string)
    end

    def self.from_yaml(string)
      ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps.from_yaml(string)
    end

    {% verbatim do %}
      macro method_missing(call)
        ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps.{{call}}
      end
    {% end %}
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
end

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
alias ::K8S::ObjectMeta = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
alias ::K8S::ListMeta = ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
alias ::K8S::APIResource = ::K8S::Apimachinery::Apis::Meta::V1::APIResource
alias ::K8S::APIResourceList = ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList
