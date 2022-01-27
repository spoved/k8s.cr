# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceCondition; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceCondition`.
  module Types::Api::Core::V1::NamespaceCondition
    #
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    #
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    #
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Status of the condition, one of True, False, Unknown.
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # Type of namespace controller condition.
    #
    # Possible enum values:
    #  - `"NamespaceContentRemaining"` contains information about resources remaining in a namespace.
    #  - `"NamespaceDeletionContentFailure"` contains information about namespace deleter errors during deletion of resources.
    #  - `"NamespaceDeletionDiscoveryFailure"` contains information about namespace deleter errors during resource discovery.
    #  - `"NamespaceDeletionGroupVersionParsingFailure"` contains information about namespace deleter errors parsing GV for legacy types.
    #  - `"NamespaceFinalizersRemaining"` contains information about which finalizers are on resources remaining in a namespace.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # NamespaceCondition contains details about state of namespace.
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status of the condition, one of True, False, Unknown.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type of namespace controller condition.\n\nPossible enum values:\n - `\"NamespaceContentRemaining\"` contains information about resources remaining in a namespace.\n - `\"NamespaceDeletionContentFailure\"` contains information about namespace deleter errors during deletion of resources.\n - `\"NamespaceDeletionDiscoveryFailure\"` contains information about namespace deleter errors during resource discovery.\n - `\"NamespaceDeletionGroupVersionParsingFailure\"` contains information about namespace deleter errors parsing GV for legacy types.\n - `\"NamespaceFinalizersRemaining\"` contains information about which finalizers are on resources remaining in a namespace.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NamespaceCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NamespaceCondition
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, true, false, nil)
    k8s_object_accessor("message", message : String, true, false, nil)
    k8s_object_accessor("reason", reason : String, true, false, nil)
    k8s_object_accessor("status", status : String, false, false, "Status of the condition, one of True, False, Unknown.")
    k8s_object_accessor("type", type : String, false, false, "Type of namespace controller condition.\n\nPossible enum values:\n - `\"NamespaceContentRemaining\"` contains information about resources remaining in a namespace.\n - `\"NamespaceDeletionContentFailure\"` contains information about namespace deleter errors during deletion of resources.\n - `\"NamespaceDeletionDiscoveryFailure\"` contains information about namespace deleter errors during resource discovery.\n - `\"NamespaceDeletionGroupVersionParsingFailure\"` contains information about namespace deleter errors parsing GV for legacy types.\n - `\"NamespaceFinalizersRemaining\"` contains information about which finalizers are on resources remaining in a namespace.")

    def initialize(*, last_transition_time : ::Time? = nil, message : String? = nil, reason : String? = nil, status : String? = nil, type : String? = nil)
      super()
      self.["lastTransitionTime"] = last_transition_time
      self.["message"] = message
      self.["reason"] = reason
      self.["status"] = status
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
