# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  @[::K8S::Properties(
    metric: {type: Api::Autoscaling::V2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::ExternalMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric", emit_null: true)]
    @[::YAML::Field(key: "metric", emit_null: true)]
    property metric : Api::Autoscaling::V2::MetricIdentifier

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target", emit_null: true)]
    @[::YAML::Field(key: "target", emit_null: true)]
    property target : Api::Autoscaling::V2::MetricTarget

    def initialize(*, @metric : Api::Autoscaling::V2::MetricIdentifier, @target : Api::Autoscaling::V2::MetricTarget)
    end
  end
end
