# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta2::HPAScalingPolicy; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta2::HPAScalingPolicy`.
  module Types::Api::Autoscaling::V2beta2::HPAScalingPolicy
    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    abstract def period_seconds : Int32?
    # :ditto:
    abstract def period_seconds! : Int32
    # :ditto:
    abstract def period_seconds? : Int32?
    # :ditto:
    abstract def period_seconds=(value : Int32)
    # Type is used to specify the scaling policy.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    abstract def value : Int32?
    # :ditto:
    abstract def value! : Int32
    # :ditto:
    abstract def value? : Int32?
    # :ditto:
    abstract def value=(value : Int32)
  end

  # HPAScalingPolicy is a single policy which must hold true for a specified past interval.
  @[::K8S::Properties(
    period_seconds: {key: "periodSeconds", accessor: "period_seconds", kind: "Int32", nilable: false, default: nil, read_only: false, description: "PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Type is used to specify the scaling policy.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    value: {key: "value", accessor: "value", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Value contains the amount of change which is permitted by the policy. It must be greater than zero", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta2::HPAScalingPolicy < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta2::HPAScalingPolicy
    k8s_object_accessor("periodSeconds", period_seconds : Int32, false, false, "PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).")
    k8s_object_accessor("type", type : String, false, false, "Type is used to specify the scaling policy.")
    k8s_object_accessor("value", value : Int32, false, false, "Value contains the amount of change which is permitted by the policy. It must be greater than zero")

    def initialize(*, period_seconds : Int32? = nil, type : String? = nil, value : Int32? = nil)
      super()
      self.["periodSeconds"] = period_seconds
      self.["type"] = type
      self.["value"] = value
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "periodSeconds", accessor: "period_seconds", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
      {key: "value", accessor: "value", nilable: false, read_only: false, default: nil, kind: Int32},
    ])
  end
end
