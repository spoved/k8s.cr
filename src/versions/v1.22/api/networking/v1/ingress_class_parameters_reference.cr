# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IngressClassParametersReference; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::IngressClassParametersReference`.
  module Types::Api::Networking::V1::IngressClassParametersReference
    # APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    abstract def api_group : String?
    # :ditto:
    abstract def api_group! : String
    # :ditto:
    abstract def api_group? : String?
    # :ditto:
    abstract def api_group=(value : String)
    # Kind is the type of resource being referenced.
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name is the name of resource being referenced.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
    # Scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace". Field can be enabled with IngressClassNamespacedParams feature gate.
    abstract def scope : String?
    # :ditto:
    abstract def scope! : String
    # :ditto:
    abstract def scope? : String?
    # :ditto:
    abstract def scope=(value : String)
  end

  # IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
  @[::K8S::Properties(
    api_group: {key: "apiGroup", accessor: "api_group", kind: "String", nilable: true, default: nil, read_only: false, description: "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind is the type of resource being referenced.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the name of resource being referenced.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace is the namespace of the resource being referenced. This field is required when scope is set to \"Namespace\" and must be unset when scope is set to \"Cluster\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope: {key: "scope", accessor: "scope", kind: "String", nilable: true, default: nil, read_only: false, description: "Scope represents if this refers to a cluster or namespace scoped resource. This may be set to \"Cluster\" (default) or \"Namespace\". Field can be enabled with IngressClassNamespacedParams feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IngressClassParametersReference < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::IngressClassParametersReference
    k8s_object_accessor("apiGroup", api_group : String, true, false, "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.")
    k8s_object_accessor("kind", kind : String, false, false, "Kind is the type of resource being referenced.")
    k8s_object_accessor("name", name : String, false, false, "Name is the name of resource being referenced.")
    k8s_object_accessor("namespace", namespace : String, true, false, "Namespace is the namespace of the resource being referenced. This field is required when scope is set to \"Namespace\" and must be unset when scope is set to \"Cluster\".")
    k8s_object_accessor("scope", scope : String, true, false, "Scope represents if this refers to a cluster or namespace scoped resource. This may be set to \"Cluster\" (default) or \"Namespace\". Field can be enabled with IngressClassNamespacedParams feature gate.")

    def initialize(*, api_group : String? = nil, kind : String? = nil, name : String? = nil, namespace : String? = nil, scope : String? = nil)
      super()
      self.["apiGroup"] = api_group
      self.["kind"] = kind
      self.["name"] = name
      self.["namespace"] = namespace
      self.["scope"] = scope
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiGroup", accessor: "api_group", nilable: true, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String},
      {key: "scope", accessor: "scope", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
