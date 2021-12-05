# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
  @[::K8S::Properties(
    average_value: {type: Int32 | String, nilable: true, key: "averageValue", getter: false, setter: false},
    current_value: {type: Int32 | String, nilable: false, key: "currentValue", getter: false, setter: false},
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
    target: {type: Api::Autoscaling::V2beta1::CrossVersionObjectReference, nilable: false, key: "target", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ObjectMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # averageValue is the current value of the average of the metric across all relevant pods (as a quantity)
    @[::JSON::Field(key: "averageValue")]
    @[::YAML::Field(key: "averageValue")]
    property average_value : Int32 | String | Nil

    # currentValue is the current value of the metric (as a quantity).
    @[::JSON::Field(key: "currentValue")]
    @[::YAML::Field(key: "currentValue")]
    property current_value : Int32 | String

    # metricName is the name of the metric in question.
    @[::JSON::Field(key: "metricName")]
    @[::YAML::Field(key: "metricName")]
    property metric_name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # target is the described Kubernetes object.
    property target : Api::Autoscaling::V2beta1::CrossVersionObjectReference

    def initialize(*, @current_value : Int32 | String, @metric_name : String, @target : Api::Autoscaling::V2beta1::CrossVersionObjectReference, @average_value : Int32 | String | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
