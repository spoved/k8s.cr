# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
  @[::K8S::Properties(
    container_resource: {type: Api::Autoscaling::V2::ContainerResourceMetricSource, nilable: true, key: "containerResource", getter: false, setter: false},
    external: {type: Api::Autoscaling::V2::ExternalMetricSource, nilable: true, key: "external", getter: false, setter: false},
    object: {type: Api::Autoscaling::V2::ObjectMetricSource, nilable: true, key: "object", getter: false, setter: false},
    pods: {type: Api::Autoscaling::V2::PodsMetricSource, nilable: true, key: "pods", getter: false, setter: false},
    resource: {type: Api::Autoscaling::V2::ResourceMetricSource, nilable: true, key: "resource", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::MetricSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
    @[::JSON::Field(key: "containerResource", emit_null: false)]
    @[::YAML::Field(key: "containerResource", emit_null: false)]
    property container_resource : Api::Autoscaling::V2::ContainerResourceMetricSource | Nil

    # external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
    @[::JSON::Field(key: "external", emit_null: false)]
    @[::YAML::Field(key: "external", emit_null: false)]
    property external : Api::Autoscaling::V2::ExternalMetricSource | Nil

    # object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
    @[::JSON::Field(key: "object", emit_null: false)]
    @[::YAML::Field(key: "object", emit_null: false)]
    property object : Api::Autoscaling::V2::ObjectMetricSource | Nil

    # pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
    @[::JSON::Field(key: "pods", emit_null: false)]
    @[::YAML::Field(key: "pods", emit_null: false)]
    property pods : Api::Autoscaling::V2::PodsMetricSource | Nil

    # resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
    @[::JSON::Field(key: "resource", emit_null: false)]
    @[::YAML::Field(key: "resource", emit_null: false)]
    property resource : Api::Autoscaling::V2::ResourceMetricSource | Nil

    # type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String, @container_resource : Api::Autoscaling::V2::ContainerResourceMetricSource | Nil = nil, @external : Api::Autoscaling::V2::ExternalMetricSource | Nil = nil, @object : Api::Autoscaling::V2::ObjectMetricSource | Nil = nil, @pods : Api::Autoscaling::V2::PodsMetricSource | Nil = nil, @resource : Api::Autoscaling::V2::ResourceMetricSource | Nil = nil)
    end
  end
end
