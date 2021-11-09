# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  class Api::Autoscaling::V2beta2::ContainerResourceMetricStatus
    # Container is the name of the container in the pods of the scaling target
    property container : String

    # current contains the current value for the given metric
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # Name is the name of the resource in question.
    property name : String

    ::YAML.mapping({
      container: {type: String, nilable: false, key: "container", getter: false, setter: false},
      current:   {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      container: {type: String, nilable: false, key: "container", getter: false, setter: false},
      current:   {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @container : String, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @name : String)
    end
  end
end
