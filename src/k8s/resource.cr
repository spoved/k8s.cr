require "json"
require "yaml"
require "log"
require "./macros"
require "./object"

annotation ::K8S::Properties; end
annotation ::K8S::GroupVersionKind; end
annotation ::K8S::Action; end

# Pre-declare some comon types
class ::K8S::Apimachinery::Apis::Meta::V1::ListMeta < ::K8S::GenericObject; end

class ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta < ::K8S::GenericObject; end

module ::K8S::Kubernetes
  REGISTRY = Array(Tuple(String, String, K8S::Kubernetes::Resource.class)).new

  # Defines a Kubernetes resource. Resources have API endpoints and are identified by a unique apiVersion and kind.
  abstract class Resource < ::K8S::GenericObject
    include ::K8S::Kubernetes::Object

    class Error < Exception; end

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String?

    # :ditto:
    abstract def api_version! : String

    # :ditto:
    abstract def api_version? : String?

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String?

    # :ditto:
    abstract def kind! : String

    # :ditto:
    abstract def kind? : String?

    def self.from_file(file)
      Log.trace { "K8S::Resource: Loading: #{file}" }
      if File.extname(file) == ".json"
        [from_json(File.read(file))]
      else
        nodes = ::K8S::Kubernetes::Resource::YAMLParser.new(File.read(file), &.parse_all_nodes)
        nodes.flat_map { |doc| doc.nodes.map { |n| ::K8S::Kubernetes::Resource.new(YAML::ParseContext.new, n) } }
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
end

require "./resource/*"

alias ::K8S::Resource = ::K8S::Kubernetes::Resource
alias ::K8S::ObjectMeta = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
alias ::K8S::ListMeta = ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
alias ::K8S::APIResource = ::K8S::Apimachinery::Apis::Meta::V1::APIResource
alias ::K8S::APIResourceList = ::K8S::Apimachinery::Apis::Meta::V1::APIResourceList
