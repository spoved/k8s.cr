# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::StatusCause; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::StatusCause`.
  module Types::Apimachinery::Apis::Meta::V1::StatusCause
    # The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
    #
    # Examples:
    #   "name" - the field "name" on the current resource
    #   "items[0].name" - the field "name" on the first array entry in "items"
    abstract def field : String?
    # :ditto:
    abstract def field! : String
    # :ditto:
    abstract def field? : String?
    # :ditto:
    abstract def field=(value : String)
    # A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # A machine-readable description of the cause of the error. If this value is empty there is no information available.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
  end

  # StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
  @[::K8S::Properties(
    field: {key: "field", accessor: "field", kind: "String", nilable: true, default: nil, read_only: false, description: "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human-readable description of the cause of the error.  This field may be presented as-is to a reader.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "A machine-readable description of the cause of the error. If this value is empty there is no information available.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::StatusCause < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::StatusCause
    k8s_object_accessor("field", field : String, true, false, "The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\"")
    k8s_object_accessor("message", message : String, true, false, "A human-readable description of the cause of the error.  This field may be presented as-is to a reader.")
    k8s_object_accessor("reason", reason : String, true, false, "A machine-readable description of the cause of the error. If this value is empty there is no information available.")

    def initialize(*, field : String? = nil, message : String? = nil, reason : String? = nil)
      super()
      self.["field"] = field
      self.["message"] = message
      self.["reason"] = reason
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "field", accessor: "field", nilable: true, read_only: false, default: nil, kind: String},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
