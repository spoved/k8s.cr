# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::HPAScalingPolicy; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::HPAScalingPolicy`.
  module Types::Api::Autoscaling::V2::HPAScalingPolicy
    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    abstract def period_seconds : Int32
    # :ditto:
    abstract def period_seconds! : Int32
    # :ditto:
    abstract def period_seconds? : Int32?
    # :ditto:
    abstract def period_seconds=(value : Int32)
    # Type is used to specify the scaling policy.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    abstract def value : Int32
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
  class Api::Autoscaling::V2::HPAScalingPolicy < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::HPAScalingPolicy

    # PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    def period_seconds : Int32
      self.["periodSeconds"].as(Int32)
    end

    # :ditto:
    def period_seconds! : Int32
      self.["periodSeconds"].as(Int32).not_nil!
    end

    # :ditto:
    def period_seconds? : Int32?
      self.["periodSeconds"]?.as(Int32?)
    end

    # :ditto:
    def period_seconds=(value : Int32)
      self.["periodSeconds"] = value
    end

    # Type is used to specify the scaling policy.
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    # Value contains the amount of change which is permitted by the policy. It must be greater than zero
    def value : Int32
      self.["value"].as(Int32)
    end

    # :ditto:
    def value! : Int32
      self.["value"].as(Int32).not_nil!
    end

    # :ditto:
    def value? : Int32?
      self.["value"]?.as(Int32?)
    end

    # :ditto:
    def value=(value : Int32)
      self.["value"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "periodSeconds", accessor: "period_seconds", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
        { key: "value", accessor: "value", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
