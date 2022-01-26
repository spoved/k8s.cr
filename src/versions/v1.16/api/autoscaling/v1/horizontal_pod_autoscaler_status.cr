# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerStatus; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V1::HorizontalPodAutoscalerStatus`.
  module Types::Api::Autoscaling::V1::HorizontalPodAutoscalerStatus
    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    abstract def current_cpu_utilization_percentage : Int32?
    # :ditto:
    abstract def current_cpu_utilization_percentage! : Int32
    # :ditto:
    abstract def current_cpu_utilization_percentage? : Int32?
    # :ditto:
    abstract def current_cpu_utilization_percentage=(value : Int32?)
    # current number of replicas of pods managed by this autoscaler.
    abstract def current_replicas : Int32
    # :ditto:
    abstract def current_replicas! : Int32
    # :ditto:
    abstract def current_replicas? : Int32?
    # :ditto:
    abstract def current_replicas=(value : Int32)
    # desired number of replicas of pods managed by this autoscaler.
    abstract def desired_replicas : Int32
    # :ditto:
    abstract def desired_replicas! : Int32
    # :ditto:
    abstract def desired_replicas? : Int32?
    # :ditto:
    abstract def desired_replicas=(value : Int32)
    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    abstract def last_scale_time : ::Time?
    # :ditto:
    abstract def last_scale_time! : ::Time
    # :ditto:
    abstract def last_scale_time? : ::Time?
    # :ditto:
    abstract def last_scale_time=(value : ::Time?)
    # most recent generation observed by this autoscaler.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32?)
  end

  # current status of a horizontal pod autoscaler
  @[::K8S::Properties(
    current_cpu_utilization_percentage: {key: "currentCPUUtilizationPercentage", accessor: "current_cpu_utilization_percentage", kind: "Int32", nilable: true, default: nil, read_only: false, description: "current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_replicas: {key: "currentReplicas", accessor: "current_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "current number of replicas of pods managed by this autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    desired_replicas: {key: "desiredReplicas", accessor: "desired_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "desired number of replicas of pods managed by this autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_scale_time: {key: "lastScaleTime", accessor: "last_scale_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "most recent generation observed by this autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V1::HorizontalPodAutoscalerStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V1::HorizontalPodAutoscalerStatus

    # current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    def current_cpu_utilization_percentage : Int32?
      self.["currentCPUUtilizationPercentage"].as(Int32?)
    end

    # :ditto:
    def current_cpu_utilization_percentage! : Int32
      self.["currentCPUUtilizationPercentage"].as(Int32?).not_nil!
    end

    # :ditto:
    def current_cpu_utilization_percentage? : Int32?
      self.["currentCPUUtilizationPercentage"]?.as(Int32?)
    end

    # :ditto:
    def current_cpu_utilization_percentage=(value : Int32?)
      self.["currentCPUUtilizationPercentage"] = value
    end

    # current number of replicas of pods managed by this autoscaler.
    def current_replicas : Int32
      self.["currentReplicas"].as(Int32)
    end

    # :ditto:
    def current_replicas! : Int32
      self.["currentReplicas"].as(Int32).not_nil!
    end

    # :ditto:
    def current_replicas? : Int32?
      self.["currentReplicas"]?.as(Int32?)
    end

    # :ditto:
    def current_replicas=(value : Int32)
      self.["currentReplicas"] = value
    end

    # desired number of replicas of pods managed by this autoscaler.
    def desired_replicas : Int32
      self.["desiredReplicas"].as(Int32)
    end

    # :ditto:
    def desired_replicas! : Int32
      self.["desiredReplicas"].as(Int32).not_nil!
    end

    # :ditto:
    def desired_replicas? : Int32?
      self.["desiredReplicas"]?.as(Int32?)
    end

    # :ditto:
    def desired_replicas=(value : Int32)
      self.["desiredReplicas"] = value
    end

    # last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
    def last_scale_time : ::Time?
      self.["lastScaleTime"].as(::Time?)
    end

    # :ditto:
    def last_scale_time! : ::Time
      self.["lastScaleTime"].as(::Time?).not_nil!
    end

    # :ditto:
    def last_scale_time? : ::Time?
      self.["lastScaleTime"]?.as(::Time?)
    end

    # :ditto:
    def last_scale_time=(value : ::Time?)
      self.["lastScaleTime"] = value
    end

    # most recent generation observed by this autoscaler.
    def observed_generation : Int32?
      self.["observedGeneration"].as(Int32?)
    end

    # :ditto:
    def observed_generation! : Int32
      self.["observedGeneration"].as(Int32?).not_nil!
    end

    # :ditto:
    def observed_generation? : Int32?
      self.["observedGeneration"]?.as(Int32?)
    end

    # :ditto:
    def observed_generation=(value : Int32?)
      self.["observedGeneration"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "currentCPUUtilizationPercentage", accessor: "current_cpu_utilization_percentage", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "currentReplicas", accessor: "current_replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "desiredReplicas", accessor: "desired_replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "lastScaleTime", accessor: "last_scale_time", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
