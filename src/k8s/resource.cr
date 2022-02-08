require "./object"

abstract struct K8S::Kubernetes::Resource < K8S::Kubernetes::Object; end

require "./resource/definitions"
require "./resource/*"

abstract struct K8S::Kubernetes::Resource < K8S::Kubernetes::Object
  define_prop api_version : String, key: "apiVersion", nilable: false, read_only: true, description: %<APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))>
  define_prop kind : String, nilable: false, read_only: true, description: %<Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))>

  def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
    super
    raise K8S::Kubernetes::Resource::Error.new "apiVersion must be defined" if @__object__["apiVersion"]?.nil?
    raise K8S::Kubernetes::Resource::Error.new "kind must be defined" if @__object__["kind"]?.nil?
  end

  def initialize(obj : K8S::Internals::GenericObject)
    super
    raise K8S::Kubernetes::Resource::Error.new "apiVersion must be defined" if @__object__["apiVersion"]?.nil?
    raise K8S::Kubernetes::Resource::Error.new "kind must be defined" if @__object__["kind"]?.nil?
  end

  def self.new(pull : ::JSON::PullParser)
    new(K8S::Internals::GenericObject.new(pull))
  end

  def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
    new(K8S::Internals::GenericObject.new(ctx, node))
  end
end

abstract struct K8S::Kubernetes::Resource::Object < K8S::Kubernetes::Resource
  define_prop metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>
end

abstract struct K8S::Kubernetes::Resource::List(T) < K8S::Kubernetes::Resource
  define_prop metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, true, false, %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>

  macro inherited
    define_prop items : ListWrapper(T) = ListWrapper(T).new, false, false, %<Items is a list of `#{T}`.>
  end
end
