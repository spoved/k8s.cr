# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ObjectFieldSelector; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ObjectFieldSelector`.
  module Types::Api::Core::V1::ObjectFieldSelector
    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Path of the field to select in the specified API version.
    abstract def field_path : String?
    # :ditto:
    abstract def field_path! : String
    # :ditto:
    abstract def field_path? : String?
    # :ditto:
    abstract def field_path=(value : String)
  end

  # ObjectFieldSelector selects an APIVersioned field of an object.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "Version of the schema the FieldPath is written in terms of, defaults to \"v1\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    field_path: {key: "fieldPath", accessor: "field_path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path of the field to select in the specified API version.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ObjectFieldSelector < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ObjectFieldSelector
    k8s_object_accessor("apiVersion", api_version : String, true, false, "Version of the schema the FieldPath is written in terms of, defaults to \"v1\".")
    k8s_object_accessor("fieldPath", field_path : String, false, false, "Path of the field to select in the specified API version.")

    def initialize(*, api_version : String? = nil, field_path : String? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["fieldPath"] = field_path
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "fieldPath", accessor: "field_path", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
