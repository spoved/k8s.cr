# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry; end

require "./fields"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ManagedFieldsEntry`.
  module Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::Fields | ::Time | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the version of this resource that this field set applies to. The format is [["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)](["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # Fields identifies a set of fields.
    abstract def fields : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
    # :ditto:
    abstract def fields! : ::K8S::Apimachinery::Apis::Meta::V1::Fields
    # :ditto:
    abstract def fields? : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
    # :ditto:
    abstract def fields=(value : ::K8S::Apimachinery::Apis::Meta::V1::Fields?)
    # Manager is an identifier of the workflow managing these fields.
    abstract def manager : String?
    # :ditto:
    abstract def manager! : String
    # :ditto:
    abstract def manager? : String?
    # :ditto:
    abstract def manager=(value : String?)
    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    abstract def operation : String?
    # :ditto:
    abstract def operation! : String
    # :ditto:
    abstract def operation? : String?
    # :ditto:
    abstract def operation=(value : String?)
    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    abstract def time : ::Time?
    # :ditto:
    abstract def time! : ::Time
    # :ditto:
    abstract def time? : ::Time?
    # :ditto:
    abstract def time=(value : ::Time?)
  end

  # ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the version of this resource that this field set applies to. The format is [\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.](\"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)"},
    fields: {key: "fields", accessor: "fields", kind: "::K8S::Apimachinery::Apis::Meta::V1::Fields", nilable: true, default: nil, read_only: false, description: "Fields identifies a set of fields."},
    manager: {key: "manager", accessor: "manager", kind: "String", nilable: true, default: nil, read_only: false, description: "Manager is an identifier of the workflow managing these fields."},
    operation: {key: "operation", accessor: "operation", kind: "String", nilable: true, default: nil, read_only: false, description: "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."},
    time: {key: "time", accessor: "time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'"},
  )]
  class Apimachinery::Apis::Meta::V1::ManagedFieldsEntry < ::K8S::Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ManagedFieldsEntry
    include ::K8S::Kubernetes::Object

    # APIVersion defines the version of this resource that this field set applies to. The format is [["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)](["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.))
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # Fields identifies a set of fields.
    def fields : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
      self.["fields"].as(::K8S::Apimachinery::Apis::Meta::V1::Fields?)
    end

    # :ditto:
    def fields! : ::K8S::Apimachinery::Apis::Meta::V1::Fields
      self.["fields"].as(::K8S::Apimachinery::Apis::Meta::V1::Fields?).not_nil!
    end

    # :ditto:
    def fields? : ::K8S::Apimachinery::Apis::Meta::V1::Fields?
      self.["fields"]?.as(::K8S::Apimachinery::Apis::Meta::V1::Fields?)
    end

    # :ditto:
    def fields=(value : ::K8S::Apimachinery::Apis::Meta::V1::Fields?)
      self.["fields"] = value
    end

    # Manager is an identifier of the workflow managing these fields.
    def manager : String?
      self.["manager"].as(String?)
    end

    # :ditto:
    def manager! : String
      self.["manager"].as(String?).not_nil!
    end

    # :ditto:
    def manager? : String?
      self.["manager"]?.as(String?)
    end

    # :ditto:
    def manager=(value : String?)
      self.["manager"] = value
    end

    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    def operation : String?
      self.["operation"].as(String?)
    end

    # :ditto:
    def operation! : String
      self.["operation"].as(String?).not_nil!
    end

    # :ditto:
    def operation? : String?
      self.["operation"]?.as(String?)
    end

    # :ditto:
    def operation=(value : String?)
      self.["operation"] = value
    end

    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    def time : ::Time?
      self.["time"].as(::Time?)
    end

    # :ditto:
    def time! : ::Time
      self.["time"].as(::Time?).not_nil!
    end

    # :ditto:
    def time? : ::Time?
      self.["time"]?.as(::Time?)
    end

    # :ditto:
    def time=(value : ::Time?)
      self.["time"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "fields", accessor: "fields", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::Fields },
        { key: "manager", accessor: "manager", nilable: true, read_only: false, default: nil, kind: String },
        { key: "operation", accessor: "operation", nilable: true, read_only: false, default: nil, kind: String },
        { key: "time", accessor: "time", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
