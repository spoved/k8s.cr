require "./resource"

class ::K8S::Kubernetes::WatchEvent < ::K8S::Kubernetes::Resource
  # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
  def api_version : String
    self.["apiVersion"] = "v1" unless self.["apiVersion"]?
    self.["apiVersion"].as(String)
  end

  # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
  def kind : String
    self.["kind"] = "WatchEvent" unless self.["kind"]?
    self.["kind"].as(String)
  end

  def initialize(type, object)
    super()
    self.["kind"] = "WatchEvent"
    self.["apiVersion"] = "v1"
    self.["type"] = type
    self.["object"] = type
  end

  macro finished
    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "WatchEvent", kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: ::String},
      {key: "object", accessor: "object", nilable: false, read_only: false, default: nil, kind: ::K8S::Kubernetes::Resource},
    ])
  end
end

alias ::K8S::WatchEvent = ::K8S::Kubernetes::WatchEvent
