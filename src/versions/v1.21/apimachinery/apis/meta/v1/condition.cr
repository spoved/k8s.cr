# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Condition; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Condition`.
  module Types::Apimachinery::Apis::Meta::V1::Condition
    # lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
    abstract def last_transition_time : ::Time?
    # :ditto:
    abstract def last_transition_time! : ::Time
    # :ditto:
    abstract def last_transition_time? : ::Time?
    # :ditto:
    abstract def last_transition_time=(value : ::Time)
    # message is a human readable message indicating details about the transition. This may be an empty string.
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
    # reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # status of the condition, one of True, False, Unknown.
    abstract def status : String?
    # :ditto:
    abstract def status! : String
    # :ditto:
    abstract def status? : String?
    # :ditto:
    abstract def status=(value : String)
    # type of condition in CamelCase or in [[foo.example.com/CamelCase.](foo.example.com/CamelCase.)]([foo.example.com/CamelCase.](foo.example.com/CamelCase.))
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Condition contains details for one aspect of the current state of this API Resource.
  @[::K8S::Properties(
    last_transition_time: {key: "lastTransitionTime", accessor: "last_transition_time", kind: "::Time", nilable: false, default: nil, read_only: false, description: "lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: false, default: nil, read_only: false, description: "message is a human readable message indicating details about the transition. This may be an empty string.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: false, default: nil, read_only: false, description: "reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    status: {key: "status", accessor: "status", kind: "String", nilable: false, default: nil, read_only: false, description: "status of the condition, one of True, False, Unknown.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::Condition < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Condition
    k8s_object_accessor("lastTransitionTime", last_transition_time : ::Time, false, false, "lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.")
    k8s_object_accessor("message", message : String, false, false, "message is a human readable message indicating details about the transition. This may be an empty string.")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.")
    k8s_object_accessor("reason", reason : String, false, false, "reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.")
    k8s_object_accessor("status", status : String, false, false, "status of the condition, one of True, False, Unknown.")
    k8s_object_accessor("type", type : String, false, false, "type of condition in CamelCase or in [foo.example.com/CamelCase.](foo.example.com/CamelCase.)")

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
      {key: "lastTransitionTime", accessor: "last_transition_time", nilable: false, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: false, read_only: false, default: nil, kind: String},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "reason", accessor: "reason", nilable: false, read_only: false, default: nil, kind: String},
      {key: "status", accessor: "status", nilable: false, read_only: false, default: nil, kind: String},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
