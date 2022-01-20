# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec; end

require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V1::HorizontalPodAutoscalerSpec`.
  module Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec
    alias ValueType = Int32 | ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    abstract def max_replicas : Int32
    # :ditto:
    abstract def max_replicas! : Int32
    # :ditto:
    abstract def max_replicas? : Int32?
    # :ditto:
    abstract def max_replicas=(value : Int32)
    # lower limit for the number of pods that can be set by the autoscaler, default 1.
    abstract def min_replicas : Int32?
    # :ditto:
    abstract def min_replicas! : Int32
    # :ditto:
    abstract def min_replicas? : Int32?
    # :ditto:
    abstract def min_replicas=(value : Int32?)
    # reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
    abstract def scale_target_ref : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference
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
    abstract def target_cpu_utilization_percentage=(value : Int32?)
  end

  # specification of a horizontal pod autoscaler.
  @[::K8S::Properties(
    max_replicas: {key: "maxReplicas", accessor: "max_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min_replicas: {key: "minReplicas", accessor: "min_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "lower limit for the number of pods that can be set by the autoscaler, default 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_target_ref: {key: "scaleTargetRef", accessor: "scale_target_ref", kind: "::K8S::Api::Autoscaling::V1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_cpu_utilization_percentage: {key: "targetCPUUtilizationPercentage", accessor: "target_cpu_utilization_percentage", kind: "Int32", nilable: true, default: nil, read_only: false, description: "target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V1::HorizontalPodAutoscalerSpec < ::K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec::Instance
    include ::K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerSpec
    include ::K8S::Kubernetes::Object

    # upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    def max_replicas : Int32
      self.["maxReplicas"].as(Int32)
    end

    # :ditto:
    def max_replicas! : Int32
      self.["maxReplicas"].as(Int32).not_nil!
    end

    # :ditto:
    def max_replicas? : Int32?
      self.["maxReplicas"]?.as(Int32?)
    end

    # :ditto:
    def max_replicas=(value : Int32)
      self.["maxReplicas"] = value
    end

    # lower limit for the number of pods that can be set by the autoscaler, default 1.
    def min_replicas : Int32?
      self.["minReplicas"].as(Int32?)
    end

    # :ditto:
    def min_replicas! : Int32
      self.["minReplicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def min_replicas? : Int32?
      self.["minReplicas"]?.as(Int32?)
    end

    # :ditto:
    def min_replicas=(value : Int32?)
      self.["minReplicas"] = value
    end

    # reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption and will set the desired number of pods by using its Scale subresource.
    def scale_target_ref : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference
      self.["scaleTargetRef"].as(::K8S::Api::Autoscaling::V1::CrossVersionObjectReference)
    end

    # :ditto:
    def scale_target_ref! : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference
      self.["scaleTargetRef"].as(::K8S::Api::Autoscaling::V1::CrossVersionObjectReference).not_nil!
    end

    # :ditto:
    def scale_target_ref? : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference?
      self.["scaleTargetRef"]?.as(::K8S::Api::Autoscaling::V1::CrossVersionObjectReference?)
    end

    # :ditto:
    def scale_target_ref=(value : ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference)
      self.["scaleTargetRef"] = value
    end

    # target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
    def target_cpu_utilization_percentage : Int32?
      self.["targetCPUUtilizationPercentage"].as(Int32?)
    end

    # :ditto:
    def target_cpu_utilization_percentage! : Int32
      self.["targetCPUUtilizationPercentage"].as(Int32?).not_nil!
    end

    # :ditto:
    def target_cpu_utilization_percentage? : Int32?
      self.["targetCPUUtilizationPercentage"]?.as(Int32?)
    end

    # :ditto:
    def target_cpu_utilization_percentage=(value : Int32?)
      self.["targetCPUUtilizationPercentage"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "maxReplicas", accessor: "max_replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "minReplicas", accessor: "min_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "scaleTargetRef", accessor: "scale_target_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V1::CrossVersionObjectReference },
        { key: "targetCPUUtilizationPercentage", accessor: "target_cpu_utilization_percentage", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
