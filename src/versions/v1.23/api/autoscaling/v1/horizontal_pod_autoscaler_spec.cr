# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec; end

require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V1::HorizontalPodAutoscalerSpec`.
  module Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec
    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    abstract def max_replicas : Int32?
    # :ditto:
    abstract def max_replicas! : Int32
    # :ditto:
    abstract def max_replicas? : Int32?
    # :ditto:
    abstract def max_replicas=(value : Int32)
    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    abstract def min_replicas : Int32?
    # :ditto:
    abstract def min_replicas! : Int32
    # :ditto:
    abstract def min_replicas? : Int32?
    # :ditto:
    abstract def min_replicas=(value : Int32)
    # reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
    abstract def scale_target_ref : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference?
    # :ditto:
    abstract def scale_target_ref! : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference
    # :ditto:
    abstract def scale_target_ref? : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference?
    # :ditto:
    abstract def scale_target_ref=(value : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference)
    # target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
    abstract def target_cpu_utilization_percentage : Int32?
    # :ditto:
    abstract def target_cpu_utilization_percentage! : Int32
    # :ditto:
    abstract def target_cpu_utilization_percentage? : Int32?
    # :ditto:
    abstract def target_cpu_utilization_percentage=(value : Int32)
  end

  # specification of a horizontal pod autoscaler.
  @[::K8S::Properties(
    max_replicas: {key: "maxReplicas", accessor: "max_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_replicas: {key: "minReplicas", accessor: "min_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_target_ref: {key: "scaleTargetRef", accessor: "scale_target_ref", kind: "::K8S::Api::Autoscaling::V1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_cpu_utilization_percentage: {key: "targetCPUUtilizationPercentage", accessor: "target_cpu_utilization_percentage", kind: "Int32", nilable: true, default: nil, read_only: false, description: "target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V1::HorizontalPodAutoscalerSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec
    k8s_object_accessor("maxReplicas", max_replicas : Int32, false, false, "upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.")
    k8s_object_accessor("minReplicas", min_replicas : Int32, true, false, "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.")
    k8s_object_accessor("scaleTargetRef", scale_target_ref : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference, false, false, "reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.")
    k8s_object_accessor("targetCPUUtilizationPercentage", target_cpu_utilization_percentage : Int32, true, false, "target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.")

    def initialize(*, max_replicas : Int32? = nil, min_replicas : Int32? = nil, scale_target_ref : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference? = nil, target_cpu_utilization_percentage : Int32? = nil)
      super()
      self.["maxReplicas"] = max_replicas
      self.["minReplicas"] = min_replicas
      self.["scaleTargetRef"] = scale_target_ref
      self.["targetCPUUtilizationPercentage"] = target_cpu_utilization_percentage
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "maxReplicas", accessor: "max_replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "minReplicas", accessor: "min_replicas", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "scaleTargetRef", accessor: "scale_target_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference},
      {key: "targetCPUUtilizationPercentage", accessor: "target_cpu_utilization_percentage", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
