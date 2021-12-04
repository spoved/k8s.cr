# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
  class Api::Autoscaling::V2beta2::ExternalMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # current contains the current value for the given metric
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # metric identifies the target metric by name and selector
    property metric : Api::Autoscaling::V2beta2::MetricIdentifier

    ::YAML.mapping({
      current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      metric:  {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      metric:  {type: Api::Autoscaling::V2beta2::MetricIdentifier, nilable: false, key: "metric", getter: false, setter: false},
    }, true)

    def initialize(*, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @metric : Api::Autoscaling::V2beta2::MetricIdentifier)
    end
  end
end
