# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    described_object: {type: Api::Autoscaling::V2::CrossVersionObjectReference, nilable: false, key: "describedObject", getter: false, setter: false},
    metric: {type: Api::Autoscaling::V2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::ObjectMetricSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # describedObject specifies the descriptions of a object,such as kind,name apiVersion
    @[::JSON::Field(key: "describedObject", emit_null: true)]
    @[::YAML::Field(key: "describedObject", emit_null: true)]
    property described_object : Api::Autoscaling::V2::CrossVersionObjectReference

    # metric identifies the target metric by name and selector
    @[::JSON::Field(key: "metric", emit_null: true)]
    @[::YAML::Field(key: "metric", emit_null: true)]
    property metric : Api::Autoscaling::V2::MetricIdentifier

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target", emit_null: true)]
    @[::YAML::Field(key: "target", emit_null: true)]
    property target : Api::Autoscaling::V2::MetricTarget

    def initialize(*, @described_object : Api::Autoscaling::V2::CrossVersionObjectReference, @metric : Api::Autoscaling::V2::MetricIdentifier, @target : Api::Autoscaling::V2::MetricTarget)
    end
  end
end
