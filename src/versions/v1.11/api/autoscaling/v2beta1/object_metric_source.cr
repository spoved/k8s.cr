# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
    target_value: {type: Int32 | String, nilable: false, key: "targetValue", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName", emit_null: true)]
    @[::YAML::Field(key: "metricName", emit_null: true)]
    property metric_name : String

    # target is the described Kubernetes object.
    @[::JSON::Field(key: "target", emit_null: true)]
    @[::YAML::Field(key: "target", emit_null: true)]
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    # targetValue is the target value of the metric (as a quantity).
    @[::JSON::Field(key: "targetValue", emit_null: true)]
    @[::YAML::Field(key: "targetValue", emit_null: true)]
    property target_value : Int32 | String

    def initialize(*, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference, @target_value : Int32 | String)
    end
  end
end
