# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Rbac::V1::RoleRef; end

module K8S
  # Namespace holding the types for `Api::Rbac::V1::RoleRef`.
  module Types::Api::Rbac::V1::RoleRef
    # APIGroup is the group for the resource being referenced
    abstract def api_group : String?
    # :ditto:
    abstract def api_group! : String
    # :ditto:
    abstract def api_group? : String?
    # :ditto:
    abstract def api_group=(value : String)
    # Kind is the type of resource being referenced
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name is the name of resource being referenced
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # RoleRef contains information that points to the role being used
  @[::K8S::Properties(
    api_group: {key: "apiGroup", accessor: "api_group", kind: "String", nilable: false, default: nil, read_only: false, description: "APIGroup is the group for the resource being referenced", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: nil, read_only: false, description: "Kind is the type of resource being referenced", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the name of resource being referenced", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Rbac::V1::RoleRef < ::K8S::GenericObject
    include ::K8S::Types::Api::Rbac::V1::RoleRef
    k8s_object_accessor("apiGroup", api_group : String, false, false, "APIGroup is the group for the resource being referenced")
    k8s_object_accessor("kind", kind : String, false, false, "Kind is the type of resource being referenced")
    k8s_object_accessor("name", name : String, false, false, "Name is the name of resource being referenced")

    def initialize(*, api_group : String? = nil, kind : String? = nil, name : String? = nil)
      super()
      self.["apiGroup"] = api_group
      self.["kind"] = kind
      self.["name"] = name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiGroup", accessor: "api_group", nilable: false, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
