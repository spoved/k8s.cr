# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MetricStatus describes the last-read state of a single metric.
  @[::K8S::Properties(
    container_resource: {type: Api::Autoscaling::V2beta1::ContainerResourceMetricStatus, nilable: true, key: "containerResource", getter: false, setter: false},
    external: {type: Api::Autoscaling::V2beta1::ExternalMetricStatus, nilable: true, key: "external", getter: false, setter: false},
    object: {type: Api::Autoscaling::V2beta1::ObjectMetricStatus, nilable: true, key: "object", getter: false, setter: false},
    pods: {type: Api::Autoscaling::V2beta1::PodsMetricStatus, nilable: true, key: "pods", getter: false, setter: false},
    resource: {type: Api::Autoscaling::V2beta1::ResourceMetricStatus, nilable: true, key: "resource", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::MetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "containerResource")]
    @[::YAML::Field(key: "containerResource")]
    property container_resource : Api::Autoscaling::V2beta1::ContainerResourceMetricStatus | Nil

    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    property external : Api::Autoscaling::V2beta1::ExternalMetricStatus | Nil

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    property object : Api::Autoscaling::V2beta1::ObjectMetricStatus | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    property pods : Api::Autoscaling::V2beta1::PodsMetricStatus | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    property resource : Api::Autoscaling::V2beta1::ResourceMetricStatus | Nil

    # type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    property type : String

    def initialize(*, @type : String, @container_resource : Api::Autoscaling::V2beta1::ContainerResourceMetricStatus | Nil = nil, @external : Api::Autoscaling::V2beta1::ExternalMetricStatus | Nil = nil, @object : Api::Autoscaling::V2beta1::ObjectMetricStatus | Nil = nil, @pods : Api::Autoscaling::V2beta1::PodsMetricStatus | Nil = nil, @resource : Api::Autoscaling::V2beta1::ResourceMetricStatus | Nil = nil)
    end
  end
end
