# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersionCondition; end

module K8S
  # Namespace holding the types for `Api::Apiserverinternal::V1alpha1::StorageVersionCondition`.
  module Types::Api::Apiserverinternal::V1alpha1::StorageVersionCondition
    # Last time the condition transitioned from one status to another.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    # A human readable message indicating details about the transition.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # If set, this represents the .metadata.generation that the condition was set based upon.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
    # The reason for the condition's last transition.
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
    # Type of the condition.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Describes the state of the storageVersion at a certain point.
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Last time the condition transitioned from one status to another.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "A human readable message indicating details about the transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "If set, this represents the .metadata.generation that the condition was set based upon.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: false, default: nil, read_only: false, description: "The reason for the condition's last transition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "Status of the condition, one of True, False, Unknown.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type of the condition.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersionCondition < ::K8S::GenericObject
    include ::K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersionCondition
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, true, false, "Last time the condition transitioned from one status to another.")
    k8s_object_accessor("message", message : String, true, false, "A human readable message indicating details about the transition.")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "If set, this represents the .metadata.generation that the condition was set based upon.")
    k8s_object_accessor("reason", reason : String, false, false, "The reason for the condition's last transition.")
    k8s_object_accessor("status", status : String, false, false, "Status of the condition, one of True, False, Unknown.")
    k8s_object_accessor("type", type : String, false, false, "Type of the condition.")

    def initialize(*, last_transition_time : ::Time? = nil, message : String? = nil, observed_generation : Int32? = nil, reason : String? = nil, status : String? = nil, type : String? = nil)
      super()
      self.["lastTransitionTime"] = last_transition_time
      self.["message"] = message
      self.["observedGeneration"] = observed_generation
      self.["reason"] = reason
      self.["status"] = status
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "lastTransitionTime", accessor: "last_transition_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "reason", accessor: "reason", nilable: false, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
