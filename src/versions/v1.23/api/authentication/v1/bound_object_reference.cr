# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::BoundObjectReference; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::BoundObjectReference`.
  module Types::Api::Authentication::V1::BoundObjectReference
    # API version of the referent.
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # Name of the referent.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # UID of the referent.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
  end

  # BoundObjectReference is a reference to an object that a token is bound to.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "API version of the referent.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind of the referent. Valid kinds are 'Pod' and 'Secret'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the referent.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID of the referent.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authentication::V1::BoundObjectReference < ::K8S::GenericObject
    include ::K8S::Types::Api::Authentication::V1::BoundObjectReference
    k8s_object_accessor("apiVersion", api_version : String, true, false, "API version of the referent.")
    k8s_object_accessor("kind", kind : String, true, false, "Kind of the referent. Valid kinds are 'Pod' and 'Secret'.")
    k8s_object_accessor("name", name : String, true, false, "Name of the referent.")
    k8s_object_accessor("uid", uid : String, true, false, "UID of the referent.")

    def initialize(*, api_version : String? = nil, kind : String? = nil, name : String? = nil, uid : String? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["kind"] = kind
      self.["name"] = name
      self.["uid"] = uid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
