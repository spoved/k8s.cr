# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec; end

require "./metric_spec"
require "./cross_version_object_reference"

module K8S
  # Namespace holding the types for `Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec`.
  module Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec
    alias ValueType = Int32 | ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec) | ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    abstract def max_replicas : Int32
    # :ditto:
    abstract def max_replicas! : Int32
    # :ditto:
    abstract def max_replicas? : Int32?
    # :ditto:
    abstract def max_replicas=(value : Int32)
    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
    abstract def metrics : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?
    # :ditto:
    abstract def metrics! : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)
    # :ditto:
    abstract def metrics? : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?
    # :ditto:
    abstract def metrics=(value : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?)
    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down. It defaults to 1 pod.
    abstract def min_replicas : Int32?
    # :ditto:
    abstract def min_replicas! : Int32
    # :ditto:
    abstract def min_replicas? : Int32?
    # :ditto:
    abstract def min_replicas=(value : Int32?)
    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    abstract def scale_target_ref : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def scale_target_ref! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
    # :ditto:
    abstract def scale_target_ref? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
    # :ditto:
    abstract def scale_target_ref=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
  end

  # HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
  @[::K8S::Properties(
    max_replicas: {key: "maxReplicas", accessor: "max_replicas", kind: "Int32", nilable: false, default: nil, read_only: false, description: "maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas."},
    metrics: {key: "metrics", accessor: "metrics", kind: "::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)", nilable: true, default: nil, read_only: false, description: "metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond."},
    min_replicas: {key: "minReplicas", accessor: "min_replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down. It defaults to 1 pod."},
    scale_target_ref: {key: "scaleTargetRef", accessor: "scale_target_ref", kind: "::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference", nilable: false, default: nil, read_only: false, description: "scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count."},
  )]
  class Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec < ::K8S::Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec::Instance
    include ::K8S::Types::Api::Autoscaling::V2beta1::HorizontalPodAutoscalerSpec
    include ::K8S::Kubernetes::Object

    # maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
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

    # metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond.
    def metrics : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?
      self.["metrics"].as(::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?)
    end

    # :ditto:
    def metrics! : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)
      self.["metrics"].as(::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?).not_nil!
    end

    # :ditto:
    def metrics? : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?
      self.["metrics"]?.as(::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?)
    end

    # :ditto:
    def metrics=(value : ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec)?)
      self.["metrics"] = value
    end

    # minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down. It defaults to 1 pod.
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

    # scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics should be collected, as well as to actually change the replica count.
    def scale_target_ref : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
      self.["scaleTargetRef"].as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end

    # :ditto:
    def scale_target_ref! : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference
      self.["scaleTargetRef"].as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference).not_nil!
    end

    # :ditto:
    def scale_target_ref? : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?
      self.["scaleTargetRef"]?.as(::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference?)
    end

    # :ditto:
    def scale_target_ref=(value : ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference)
      self.["scaleTargetRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "maxReplicas", accessor: "max_replicas", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "metrics", accessor: "metrics", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Autoscaling::V2beta1::MetricSpec) },
        { key: "minReplicas", accessor: "min_replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "scaleTargetRef", accessor: "scale_target_ref", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Autoscaling::V2beta1::CrossVersionObjectReference },
      ])
end
  end
end
