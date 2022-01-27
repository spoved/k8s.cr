# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry; end

require "./fields"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ManagedFieldsEntry`.
  module Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry
    # APIVersion defines the version of this resource that this field set applies to. The format is [["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)](["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Fields identifies a set of fields.
    abstract def fields : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
    # :ditto:
    abstract def fields! : ::K8S::Apimachinery::Apis::Meta::V1::Fields
    # :ditto:
    abstract def fields? : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
    # :ditto:
    abstract def fields=(value : ::K8S::Apimachinery::Apis::Meta::V1::Fields)
    # Manager is an identifier of the workflow managing these fields.
    abstract def manager : String?
    # :ditto:
    abstract def manager! : String
    # :ditto:
    abstract def manager? : String?
    # :ditto:
    abstract def manager=(value : String)
    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    abstract def operation : String?
    # :ditto:
    abstract def operation! : String
    # :ditto:
    abstract def operation? : String?
    # :ditto:
    abstract def operation=(value : String)
    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    abstract def time : ::Time?
    # :ditto:
    abstract def time! : ::Time
    # :ditto:
    abstract def time? : ::Time?
    # :ditto:
    abstract def time=(value : ::Time)
  end

  # ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the version of this resource that this field set applies to. The format is [\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.](\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fields: {key: "fields", accessor: "fields", kind: "::K8S::Apimachinery::Apis::Meta::V1::Fields", nilable: true, default: nil, read_only: false, description: "Fields identifies a set of fields.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    manager: {key: "manager", accessor: "manager", kind: "String", nilable: true, default: nil, read_only: false, description: "Manager is an identifier of the workflow managing these fields.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    operation: {key: "operation", accessor: "operation", kind: "String", nilable: true, default: nil, read_only: false, description: "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    time: {key: "time", accessor: "time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::ManagedFieldsEntry < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the version of this resource that this field set applies to. The format is [\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.](\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)")
    k8s_object_accessor("fields", fields : ::K8S::Apimachinery::Apis::Meta::V1::Fields, true, false, "Fields identifies a set of fields.")
    k8s_object_accessor("manager", manager : String, true, false, "Manager is an identifier of the workflow managing these fields.")
    k8s_object_accessor("operation", operation : String, true, false, "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.")
    k8s_object_accessor("time", time : ::Time, true, false, "Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'")

    def initialize(*, api_version : String? = nil, fields : ::K8S::Apimachinery::Apis::Meta::V1::Fields? = nil, manager : String? = nil, operation : String? = nil, time : ::Time? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["fields"] = fields
      self.["manager"] = manager
      self.["operation"] = operation
      self.["time"] = time
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "fields", accessor: "fields", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::Fields},
      {key: "manager", accessor: "manager", nilable: true, read_only: false, default: nil, kind: String},
      {key: "operation", accessor: "operation", nilable: true, read_only: false, default: nil, kind: String},
      {key: "time", accessor: "time", nilable: true, read_only: false, default: nil, kind: ::Time},
    ])
  end
end
