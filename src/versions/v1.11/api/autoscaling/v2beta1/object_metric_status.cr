# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    current_value: {type: Int32 | String, nilable: false, key: "currentValue", getter: false, setter: false},
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # currentValue is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "currentValue", emit_null: true)]
    @[::YAML::Field(key: "currentValue", emit_null: true)]
    property current_value : Int32 | String

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName", emit_null: true)]
    @[::YAML::Field(key: "metricName", emit_null: true)]
    property metric_name : String

    # target is the described Kubernetes object.
    @[::JSON::Field(key: "target", emit_null: true)]
    @[::YAML::Field(key: "target", emit_null: true)]
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    def initialize(*, @current_value : Int32 | String, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference)
    end
  end
end
