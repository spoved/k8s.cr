# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceFieldSelector; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceFieldSelector`.
  module Types::Api::Core::V1::ResourceFieldSelector
    # Container name: required for volumes, optional for env vars
    abstract def container_name : String?
    # :ditto:
    abstract def container_name! : String
    # :ditto:
    abstract def container_name? : String?
    # :ditto:
    abstract def container_name=(value : String)
    # Specifies the output format of the exposed resources, defaults to "1"
    abstract def divisor : ::Int32 | ::String?
    # :ditto:
    abstract def divisor! : ::Int32 | ::String
    # :ditto:
    abstract def divisor? : ::Int32 | ::String?
    # :ditto:
    abstract def divisor=(value : ::Int32 | ::String)
    # Required: resource to select
    abstract def resource : String?
    # :ditto:
    abstract def resource! : String
    # :ditto:
    abstract def resource? : String?
    # :ditto:
    abstract def resource=(value : String)
  end

  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  @[::K8S::Properties(
    container_name: {key: "containerName", accessor: "container_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Container name: required for volumes, optional for env vars", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    divisor: {key: "divisor", accessor: "divisor", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "Specifies the output format of the exposed resources, defaults to \"1\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource: {key: "resource", accessor: "resource", kind: "String", nilable: false, default: nil, read_only: false, description: "Required: resource to select", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ResourceFieldSelector < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ResourceFieldSelector
    k8s_object_accessor("containerName", container_name : String, true, false, "Container name: required for volumes, optional for env vars")
    k8s_object_accessor("divisor", divisor : ::Int32 | ::String, true, false, "Specifies the output format of the exposed resources, defaults to \"1\"")
    k8s_object_accessor("resource", resource : String, false, false, "Required: resource to select")

    def initialize(*, container_name : String? = nil, divisor : ::Int32 | ::String? = nil, resource : String? = nil)
      super()
      self.["containerName"] = container_name
      self.["divisor"] = divisor
      self.["resource"] = resource
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "containerName", accessor: "container_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "divisor", accessor: "divisor", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "resource", accessor: "resource", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
