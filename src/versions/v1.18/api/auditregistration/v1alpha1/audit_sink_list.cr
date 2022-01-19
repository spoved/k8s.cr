# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Auditregistration::V1alpha1::AuditSinkList; end

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./audit_sink"

module K8S
  # Namespace holding the types for `Api::Auditregistration::V1alpha1::AuditSinkList`.
  module Types::Api::Auditregistration::V1alpha1::AuditSinkList
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ListMeta | Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    # List of audit configurations.
    abstract def items : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)
    # :ditto:
    abstract def items! : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)
    # :ditto:
    abstract def items? : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)?
    # :ditto:
    abstract def items=(value : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink))
  end

  # AuditSinkList is a list of AuditSink items.
  @[::K8S::GroupVersionKind(group: "auditregistration.k8s.io", kind: "AuditSinkList", version: "v1alpha1", full: "io.k8s.api.auditregistration.v1alpha1.AuditSinkList")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "auditregistration/v1alpha1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "AuditSinkList", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ListMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    items: {key: "items", accessor: "items", kind: "Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)", nilable: false, default: nil, read_only: false, description: "List of audit configurations."},
  )]
  class Api::Auditregistration::V1alpha1::AuditSinkList < ::K8S::Types::Api::Auditregistration::V1alpha1::AuditSinkList::Instance
    include ::K8S::Types::Api::Auditregistration::V1alpha1::AuditSinkList
    include ::K8S::Kubernetes::Resource::List(::K8S::Api::Auditregistration::V1alpha1::AuditSink)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ListMeta?)
      self.["metadata"] = value
    end

    # List of audit configurations.
    def items : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)
      self.["items"].as(Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink))
    end

    # :ditto:
    def items! : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)
      self.["items"].as(Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)).not_nil!
    end

    # :ditto:
    def items? : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)?
      self.["items"]?.as(Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink)?)
    end

    # :ditto:
    def items=(value : Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink))
      self.["items"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "auditregistration/v1alpha1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "AuditSinkList", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ListMeta },
        { key: "items", accessor: "items", nilable: false, read_only: false, default: nil, kind: Array(::K8S::Api::Auditregistration::V1alpha1::AuditSink) },
      ])
end
  end
end
