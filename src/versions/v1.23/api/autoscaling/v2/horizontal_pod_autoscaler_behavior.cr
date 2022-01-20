# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior; end

require "./hpa_scaling_rules"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior`.
  module Types::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior
    alias ValueType = ::K8S::Api::Autoscaling::V2::HPAScalingRules | Nil
    alias Instance = ::K8S::Object(ValueType)

    # scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
    abstract def scale_down : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
    # :ditto:
    abstract def scale_down! : ::K8S::Api::Autoscaling::V2::HPAScalingRules
    # :ditto:
    abstract def scale_down? : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
    # :ditto:
    abstract def scale_down=(value : ::K8S::Api::Autoscaling::V2::HPAScalingRules?)
    # scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
    #   * increase no more than 4 pods per 60 seconds
    #   * double the number of pods per 60 seconds
    # No stabilization is used.
    abstract def scale_up : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
    # :ditto:
    abstract def scale_up! : ::K8S::Api::Autoscaling::V2::HPAScalingRules
    # :ditto:
    abstract def scale_up? : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
    # :ditto:
    abstract def scale_up=(value : ::K8S::Api::Autoscaling::V2::HPAScalingRules?)
  end

  # HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively).
  @[::K8S::Properties(
    scale_down: {key: "scaleDown", accessor: "scale_down", kind: "::K8S::Api::Autoscaling::V2::HPAScalingRules", nilable: true, default: nil, read_only: false, description: "scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_up: {key: "scaleUp", accessor: "scale_up", kind: "::K8S::Api::Autoscaling::V2::HPAScalingRules", nilable: true, default: nil, read_only: false, description: "scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:\n  * increase no more than 4 pods per 60 seconds\n  * double the number of pods per 60 seconds\nNo stabilization is used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior < ::K8S::Types::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior::Instance
    include ::K8S::Types::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior
    include ::K8S::Kubernetes::Object

    # scaleDown is scaling policy for scaling Down. If not set, the default value is to allow to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the highest recommendation for the last 300sec is used).
    def scale_down : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
      self.["scaleDown"].as(::K8S::Api::Autoscaling::V2::HPAScalingRules?)
    end

    # :ditto:
    def scale_down! : ::K8S::Api::Autoscaling::V2::HPAScalingRules
      self.["scaleDown"].as(::K8S::Api::Autoscaling::V2::HPAScalingRules?).not_nil!
    end

    # :ditto:
    def scale_down? : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
      self.["scaleDown"]?.as(::K8S::Api::Autoscaling::V2::HPAScalingRules?)
    end

    # :ditto:
    def scale_down=(value : ::K8S::Api::Autoscaling::V2::HPAScalingRules?)
      self.["scaleDown"] = value
    end

    # scaleUp is scaling policy for scaling Up. If not set, the default value is the higher of:
    #   * increase no more than 4 pods per 60 seconds
    #   * double the number of pods per 60 seconds
    # No stabilization is used.
    def scale_up : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
      self.["scaleUp"].as(::K8S::Api::Autoscaling::V2::HPAScalingRules?)
    end

    # :ditto:
    def scale_up! : ::K8S::Api::Autoscaling::V2::HPAScalingRules
      self.["scaleUp"].as(::K8S::Api::Autoscaling::V2::HPAScalingRules?).not_nil!
    end

    # :ditto:
    def scale_up? : ::K8S::Api::Autoscaling::V2::HPAScalingRules?
      self.["scaleUp"]?.as(::K8S::Api::Autoscaling::V2::HPAScalingRules?)
    end

    # :ditto:
    def scale_up=(value : ::K8S::Api::Autoscaling::V2::HPAScalingRules?)
      self.["scaleUp"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "scaleDown", accessor: "scale_down", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::HPAScalingRules },
        { key: "scaleUp", accessor: "scale_up", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::HPAScalingRules },
      ])
end
  end
end
