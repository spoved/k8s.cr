require "./resource"

class ::K8S::Kubernetes::WatchEvent < ::K8S::Kubernetes::Resource
  k8s_object_accessor "apiVersion", api_version : String = "v1", false, true, %<APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))>
  k8s_object_accessor "kind", kind : String = "WatchEvent", false, true, %<Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))>
  k8s_object_accessor "type", type : String, false, false
  k8s_object_accessor "object", object : ::K8S::Kubernetes::Resource, false, false

  def initialize(type, object)
    super()
    self.["kind"] = "WatchEvent"
    self.["apiVersion"] = "v1"
    self.["type"] = type
    self.["object"] = object
  end

  ::K8S::Kubernetes::Resource.define_serialize_methods([
    {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String},
    {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "WatchEvent", kind: String},
    {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: ::String},
    {key: "object", accessor: "object", nilable: false, read_only: false, default: nil, kind: ::K8S::Kubernetes::Resource},
  ])
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent
