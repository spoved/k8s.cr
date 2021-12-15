# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::ResourceMetricSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # name is the name of the resource in question.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # target specifies the target value for the given metric
    @[::JSON::Field(key: "target", emit_null: true)]
    @[::YAML::Field(key: "target", emit_null: true)]
    property target : Api::Autoscaling::V2::MetricTarget

    def initialize(*, @name : String, @target : Api::Autoscaling::V2::MetricTarget)
    end
  end
end
