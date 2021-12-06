require "json"
require "yaml"
require "./resource"

abstract class ::K8S::Kubernetes::ResourceList(T) < ::K8S::Kubernetes::Resource
  include ::K8S::Kubernetes::Resource::List

  property items : Array(T)

  # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
  property metadata : Apimachinery::Apis::Meta::V1::ListMeta?

  def initialize(*, @items : Array(T), @metadata : Apimachinery::Apis::Meta::V1::ListMeta? = nil); end
end
