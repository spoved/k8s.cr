# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::APIResourceList; end

require "./api_resource"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::APIResourceList`.
  module Types::Apimachinery::Apis::Meta::V1::APIResourceList
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
    # groupVersion is the group and version this APIResourceList is for.
    abstract def group_version : String?
    # :ditto:
    abstract def group_version! : String
    # :ditto:
    abstract def group_version? : String?
    # :ditto:
    abstract def group_version=(value : String)
    # resources contains the name of the resources and if they are namespaced.
    abstract def resources : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)?
    # :ditto:
    abstract def resources! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)
    # :ditto:
    abstract def resources? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)?
    # :ditto:
    abstract def resources=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource))
  end

  # APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
  @[::K8S::GroupVersionKind(group: "", kind: "APIResourceList", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIResourceList")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "meta/v1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "APIResourceList", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group_version: {key: "groupVersion", accessor: "group_version", kind: "String", nilable: false, default: nil, read_only: false, description: "groupVersion is the group and version this APIResourceList is for.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resources: {key: "resources", accessor: "resources", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)", nilable: false, default: nil, read_only: false, description: "resources contains the name of the resources and if they are namespaced.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::APIResourceList < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::APIResourceList
    k8s_object_accessor("apiVersion", api_version : String = "meta/v1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "APIResourceList", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("groupVersion", group_version : String, false, false, "groupVersion is the group and version this APIResourceList is for.")
    k8s_object_accessor("resources", resources : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource), false, false, "resources contains the name of the resources and if they are namespaced.")

    def initialize(*, api_version : String? = "meta/v1", kind : String? = "APIResourceList", group_version : String? = nil, resources : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["groupVersion"] = group_version
      self.["resources"] = resources
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "meta/v1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "APIResourceList", kind: String},
      {key: "groupVersion", accessor: "group_version", nilable: false, read_only: false, default: nil, kind: String},
      {key: "resources", accessor: "resources", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIResource)},
    ])
  end
end
