abstract class ::K8S::Kubernetes::Resource::List(K) < ::K8S::Kubernetes::Resource
  k8s_object_accessor "metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta, true, false, %<Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))>

  macro inherited
    k8s_object_accessor "items", items : Array(K), false, false, %<Items is a list of `#{K}`.>

    def initialize(hash : Enumerable | Iterable | NamedTuple | Nil = nil)
      super(hash)
      raise Error.new("apiVersion must be defined") if api_version!.nil?
      raise Error.new("kind must be defined") if kind!.nil?
    end
  end
end
