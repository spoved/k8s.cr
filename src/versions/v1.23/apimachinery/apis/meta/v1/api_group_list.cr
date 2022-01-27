# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::APIGroupList; end

require "./api_group"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::APIGroupList`.
  module Types::Apimachinery::Apis::Meta::V1::APIGroupList
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # groups is a list of APIGroup.
    abstract def groups : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)?
    # :ditto:
    abstract def groups! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)
    # :ditto:
    abstract def groups? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)?
    # :ditto:
    abstract def groups=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup))
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
  end

  # APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
  @[::K8S::GroupVersionKind(group: "", kind: "APIGroupList", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroupList")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    groups: {key: "groups", accessor: "groups", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)", nilable: false, default: nil, read_only: false, description: "groups is a list of APIGroup.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::APIGroupList < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::APIGroupList
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)")
    k8s_object_accessor("groups", groups : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup), false, false, "groups is a list of APIGroup.")
    k8s_object_accessor("kind", kind : String, true, false, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")

    def initialize(*, api_version : String? = nil, groups : ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)? = nil, kind : String? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["groups"] = groups
      self.["kind"] = kind
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "groups", accessor: "groups", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::APIGroup)},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
