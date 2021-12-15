# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  @[::K8S::Properties(
    current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
    metric: {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta2::ExternalMetricStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # current contains the current value for the given metric
    @[::JSON::Field(key: "current", emit_null: true)]
    @[::YAML::Field(key: "current", emit_null: true)]
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric", emit_null: true)]
    @[::YAML::Field(key: "metric", emit_null: true)]
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @metric : Api::Autoscaling::V2beta2::MetricIdentifier)
    end
  end
end
