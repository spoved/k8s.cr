# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition`.
  module Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition
    # `lastTransitionTime` is the last time the condition transitioned from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    # `message` is a human-readable message indicating details about last transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # `status` is the status of the condition. Can be True, False, Unknown. Required.
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # `type` is the type of the condition. Required.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # PriorityLevelConfigurationCondition defines the condition of priority level.
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "`lastTransitionTime` is the last time the condition transitioned from one status to another.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "`message` is a human-readable message indicating details about last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "`reason` is a unique, one-word, CamelCase reason for the condition's last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: true, default: nil, read_only: false, description: "`status` is the status of the condition. Can be True, False, Unknown. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "`type` is the type of the condition. Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, true, false, "`lastTransitionTime` is the last time the condition transitioned from one status to another.")
    k8s_object_accessor("message", message : String, true, false, "`message` is a human-readable message indicating details about last transition.")
    k8s_object_accessor("reason", reason : String, true, false, "`reason` is a unique, one-word, CamelCase reason for the condition's last transition.")
    k8s_object_accessor("status", status : String, true, false, "`status` is the status of the condition. Can be True, False, Unknown. Required.")
    k8s_object_accessor("type", type : String, true, false, "`type` is the type of the condition. Required.")

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
      {key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
