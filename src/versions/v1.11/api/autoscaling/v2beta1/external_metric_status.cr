# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  @[::K8S::Properties(
    current_average_value: {type: Int32 | String, nilable: true, key: "currentAverageValue", getter: false, setter: false},
    current_value: {type: Int32 | String, nilable: false, key: "currentValue", getter: false, setter: false},
    metric_name: {type: String, nilable: false, key: "metricName", getter: false, setter: false},
    metric_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "metricSelector", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ExternalMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # currentAverageValue is the current value of metric averaged over autoscaled pods.
    @[::JSON::Field(key: "currentAverageValue", emit_null: false)]
    @[::YAML::Field(key: "currentAverageValue", emit_null: false)]
    property current_average_value : Int32 | String | Nil

    # currentValue is the current value of the metric (as a quantity)
    @[::JSON::Field(key: "currentValue", emit_null: true)]
    @[::YAML::Field(key: "currentValue", emit_null: true)]
    property current_value : Int32 | String

    # metricName is the name of a metric used for autoscaling in metric system.
    @[::JSON::Field(key: "metricName", emit_null: true)]
    @[::YAML::Field(key: "metricName", emit_null: true)]
    property metric_name : String

    # metricSelector is used to identify a specific time series within a given metric.
    @[::JSON::Field(key: "metricSelector", emit_null: false)]
    @[::YAML::Field(key: "metricSelector", emit_null: false)]
    property metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @current_value : Int32 | String, @metric_name : String, @current_average_value : Int32 | String | Nil = nil, @metric_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
