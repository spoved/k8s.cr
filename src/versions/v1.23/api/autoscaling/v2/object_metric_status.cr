# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    current: {type: Api::Autoscaling::V2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
    described_object: {type: Api::Autoscaling::V2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
    metric: {type: Api::Autoscaling::V2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::ObjectMetricStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # current contains the current value for the given metric
    @[::JSON::Field(key: "current", emit_null: true)]
    @[::YAML::Field(key: "current", emit_null: true)]
    property current : Api::Autoscaling::V2::MetricValueStatus

    # DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
    @[::JSON::Field(key: "describedObject", emit_null: true)]
    @[::YAML::Field(key: "describedObject", emit_null: true)]
    property described_object : Api::Autoscaling::V2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric", emit_null: true)]
    @[::YAML::Field(key: "metric", emit_null: true)]
    property metric : Api::Autoscaling::V2::MetricIdentifier

    def initialize(*, @current : Api::Autoscaling::V2::MetricValueStatus, @described_object : Api::Autoscaling::V2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2::MetricIdentifier)
    end
  end
end
