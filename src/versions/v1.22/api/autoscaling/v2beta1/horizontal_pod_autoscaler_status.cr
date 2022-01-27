# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus; end

require "./horizontal_pod_autoscaler_condition"
require "./metric_status"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus`.
  module Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus
    # conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    abstract def conditions : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition))
    # currentMetrics is the last read state of the metrics used by this autoscaler.
    abstract def current_metrics : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)?
    # :ditto:
    abstract def current_metrics! : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)
    # :ditto:
    abstract def current_metrics? : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)?
    # :ditto:
    abstract def current_metrics=(value : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus))
    # currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    abstract def current_replicas : Int32?
    # :ditto:
    abstract def current_replicas! : Int32
    # :ditto:
    abstract def current_replicas? : Int32?
    # :ditto:
    abstract def current_replicas=(value : Int32)
    # desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    abstract def desired_replicas : Int32?
    # :ditto:
    abstract def desired_replicas! : Int32
    # :ditto:
    abstract def desired_replicas? : Int32?
    # :ditto:
    abstract def desired_replicas=(value : Int32)
    # lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
    abstract def last_scale_time : ::Time?
    # :ditto:
    abstract def last_scale_time! : ::Time
    # :ditto:
    abstract def last_scale_time? : ::Time?
    # :ditto:
    abstract def last_scale_time=(value : ::Time)
    # observedGeneration is the most recent generation observed by this autoscaler.
    abstract def observed_generation : Int32?
    # :ditto:
    abstract def observed_generation! : Int32
    # :ditto:
    abstract def observed_generation? : Int32?
    # :ditto:
    abstract def observed_generation=(value : Int32)
  end

  # HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)", nilable: false, default: nil, read_only: false, description: "conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_metrics: {key: "currentMetrics", accessor: "current_metrics", kind: "::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)", nilable: true, default: nil, read_only: false, description: "currentMetrics is the last read state of the metrics used by this autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    current_replicas: {key: "currentReplicas", accessor: "current_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    desired_replicas: {key: "desiredReplicas", accessor: "desired_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    last_scale_time: {key: "lastScaleTime", accessor: "last_scale_time", kind: "::Time", nilable: true, default: nil, read_only: false, description: "lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    observed_generation: {key: "observedGeneration", accessor: "observed_generation", kind: "Int32", nilable: true, default: nil, read_only: false, description: "observedGeneration is the most recent generation observed by this autoscaler.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerStatus
    k8s_object_accessor("conditions", conditions : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition), false, false, "conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.")
    k8s_object_accessor("currentMetrics", current_metrics : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus), true, false, "currentMetrics is the last read state of the metrics used by this autoscaler.")
    k8s_object_accessor("currentReplicas", current_replicas : Int32, false, false, "currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.")
    k8s_object_accessor("desiredReplicas", desired_replicas : Int32, false, false, "desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.")
    k8s_object_accessor("lastScaleTime", last_scale_time : ::Time, true, false, "lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.")
    k8s_object_accessor("observedGeneration", observed_generation : Int32, true, false, "observedGeneration is the most recent generation observed by this autoscaler.")

    def initialize(*, conditions : ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)? = nil, current_metrics : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)? = nil, current_replicas : Int32? = nil, desired_replicas : Int32? = nil, last_scale_time : ::Time? = nil, observed_generation : Int32? = nil)
      super()
      self.["conditions"] = conditions
      self.["currentMetrics"] = current_metrics
      self.["currentReplicas"] = current_replicas
      self.["desiredReplicas"] = desired_replicas
      self.["lastScaleTime"] = last_scale_time
      self.["observedGeneration"] = observed_generation
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "conditions", accessor: "conditions", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerCondition)},
      {key: "currentMetrics", accessor: "current_metrics", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Autoscaling::V2beta1::MetricStatus)},
      {key: "currentReplicas", accessor: "current_replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "desiredReplicas", accessor: "desired_replicas", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "lastScaleTime", accessor: "last_scale_time", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "observedGeneration", accessor: "observed_generation", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
