# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2::HorizontalPodAutoscalerSpec; end

require "./horizontal_pod_autoscaler_behavior"
require "./metric_spec"
require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2::HorizontalPodAutoscalerSpec`.
  module Types::Api::Autoscaling::V2::HorizontalPodAutoscalerSpec
    # behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.
    abstract def behavior : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior?
    # :ditto:
    abstract def behavior! : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior
    # :ditto:
    abstract def behavior? : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior?
    # :ditto:
    abstract def behavior=(value : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior)
    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    abstract def max_replicas : Int32?
    # :ditto:
    abstract def max_replicas! : Int32
    # :ditto:
    abstract def max_replicas? : Int32?
    # :ditto:
    abstract def max_replicas=(value : Int32)
    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
    abstract def metrics : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec)?
    # :ditto:
    abstract def metrics! : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec)
    # :ditto:
    abstract def metrics? : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec)?
    # :ditto:
    abstract def metrics=(value : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec))
    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    abstract def min_replicas : Int32?
    # :ditto:
    abstract def min_replicas! : Int32
    # :ditto:
    abstract def min_replicas? : Int32?
    # :ditto:
    abstract def min_replicas=(value : Int32)
    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    abstract def scale_target_ref : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference?
    # :ditto:
    abstract def scale_target_ref! : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference
    # :ditto:
    abstract def scale_target_ref? : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference?
    # :ditto:
    abstract def scale_target_ref=(value : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference)
  end

  # HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  @[::K8S::Properties(
    behavior: {key: "behavior", accessor: "behavior", kind: "::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior", nilable: true, default: nil, read_only: false, description: "behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    max_replicas: {key: "maxReplicas", accessor: "max_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metrics: {key: "metrics", accessor: "metrics", kind: "::Array(::K8S::Api::Autoscaling::V2::MetricSpec)", nilable: true, default: nil, read_only: false, description: "metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
    min_replicas: {key: "minReplicas", accessor: "min_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_target_ref: {key: "scaleTargetRef", accessor: "scale_target_ref", kind: "::K8S::Api::Autoscaling::V2::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2::HorizontalPodAutoscalerSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2::HorizontalPodAutoscalerSpec
    k8s_object_accessor("behavior", behavior : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior, true, false, "behavior configures the scaling behavior of the target in both Up and Down directions (scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for scale up and scale down are used.")
    k8s_object_accessor("maxReplicas", max_replicas : Int32, false, false, "maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.")
    k8s_object_accessor("metrics", metrics : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec), true, false, "metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.")
    k8s_object_accessor("minReplicas", min_replicas : Int32, true, false, "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.")
    k8s_object_accessor("scaleTargetRef", scale_target_ref : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference, false, false, "scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.")

    def initialize(*, behavior : ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior? = nil, max_replicas : Int32? = nil, metrics : ::Array(::K8S::Api::Autoscaling::V2::MetricSpec)? = nil, min_replicas : Int32? = nil, scale_target_ref : ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference? = nil)
      super()
      self.["behavior"] = behavior
      self.["maxReplicas"] = max_replicas
      self.["metrics"] = metrics
      self.["minReplicas"] = min_replicas
      self.["scaleTargetRef"] = scale_target_ref
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "behavior", accessor: "behavior", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::HorizontalPodAutoscalerBehavior},
      {key: "maxReplicas", accessor: "max_replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "metrics", accessor: "metrics", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Autoscaling::V2::MetricSpec)},
      {key: "minReplicas", accessor: "min_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "scaleTargetRef", accessor: "scale_target_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2::CrossVersionObjectReference},
    ])
  end
end
