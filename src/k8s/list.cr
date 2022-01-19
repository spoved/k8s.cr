require "./resource"

module ::K8S::Types::Kubernetes::ResourceList
  alias ValueType = String | ::Array(::K8S::Kubernetes::Resource) | ::K8S::Kubernetes::Object | Nil
  alias Instance = ::K8S::Object(ValueType)
end

class ::K8S::Api::Core::V1::List < ::K8S::Types::Kubernetes::ResourceList::Instance
  include ::K8S::Types::Kubernetes::ResourceList
  include ::K8S::Kubernetes::Resource::List(::K8S::Kubernetes::Resource)

  # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
  def api_version : String
    "v1"
  end

  # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
  def kind : String
    "List"
  end

  # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
  def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
  end

  # :ditto:
  def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
    self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?).not_nil!
  end

  # :ditto:
  def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
  end

  # :ditto:
  def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    self.["metadata"] = value
  end

  # A list of daemon sets.
  def items : Array(::K8S::Kubernetes::Resource)
    self.["items"].as(Array(::K8S::Kubernetes::Resource))
  end

  # :ditto:
  def items! : Array(::K8S::Kubernetes::Resource)
    (self.["items"] ||= Array(::K8S::Kubernetes::Resource).new).as(Array(::K8S::Kubernetes::Resource))
  end

  # :ditto:
  def items? : Array(::K8S::Kubernetes::Resource)?
    self.["items"]?.as(Array(::K8S::Kubernetes::Resource)?)
  end

  # :ditto:
  def items=(value : Array(::K8S::Kubernetes::Resource))
    self.["items"] = value
  end

  macro finished
    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "List", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta},
      {key: "items", accessor: "items", nilable: false, read_only: false, default: nil, kind: Array(::K8S::Kubernetes::Resource)},
    ])
  end
end
