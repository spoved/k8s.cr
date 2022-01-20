# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::StatusDetails; end

require "./status_cause"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::StatusDetails`.
  module Types::Apimachinery::Apis::Meta::V1::StatusDetails
    alias ValueType = ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause) | String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
    abstract def causes : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?
    # :ditto:
    abstract def causes! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)
    # :ditto:
    abstract def causes? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?
    # :ditto:
    abstract def causes=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?)
    # The group attribute of the resource associated with the status StatusReason.
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String?)
    # The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String?)
    # The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
    abstract def retry_after_seconds : Int32?
    # :ditto:
    abstract def retry_after_seconds! : Int32
    # :ditto:
    abstract def retry_after_seconds? : Int32?
    # :ditto:
    abstract def retry_after_seconds=(value : Int32?)
    # UID of the resource. (when there is a single resource which can be described). More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
  end

  # StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
  @[::K8S::Properties(
    causes: {key: "causes", accessor: "causes", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)", nilable: true, default: nil, read_only: false, description: "The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    group: {key: "group", accessor: "group", kind: "String", nilable: true, default: nil, read_only: false, description: "The group attribute of the resource associated with the status StatusReason.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    retry_after_seconds: {key: "retryAfterSeconds", accessor: "retry_after_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID of the resource. (when there is a single resource which can be described). More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::StatusDetails < ::K8S::Types::Apimachinery::Apis::Meta::V1::StatusDetails::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::StatusDetails
    include ::K8S::Kubernetes::Object

    # The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
    def causes : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?
      self.["causes"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?)
    end

    # :ditto:
    def causes! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)
      self.["causes"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?).not_nil!
    end

    # :ditto:
    def causes? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?
      self.["causes"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?)
    end

    # :ditto:
    def causes=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause)?)
      self.["causes"] = value
    end

    # The group attribute of the resource associated with the status StatusReason.
    def group : String?
      self.["group"].as(String?)
    end

    # :ditto:
    def group! : String
      self.["group"].as(String?).not_nil!
    end

    # :ditto:
    def group? : String?
      self.["group"]?.as(String?)
    end

    # :ditto:
    def group=(value : String?)
      self.["group"] = value
    end

    # The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    def kind : String?
      self.["kind"].as(String?)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String?).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String?)
      self.["kind"] = value
    end

    # The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
    def retry_after_seconds : Int32?
      self.["retryAfterSeconds"].as(Int32?)
    end

    # :ditto:
    def retry_after_seconds! : Int32
      self.["retryAfterSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def retry_after_seconds? : Int32?
      self.["retryAfterSeconds"]?.as(Int32?)
    end

    # :ditto:
    def retry_after_seconds=(value : Int32?)
      self.["retryAfterSeconds"] = value
    end

    # UID of the resource. (when there is a single resource which can be described). More info: [[http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)](http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids))
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "causes", accessor: "causes", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause) },
        { key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String },
        { key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "retryAfterSeconds", accessor: "retry_after_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
