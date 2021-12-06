# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  @[::K8S::Properties(
    container: {type: String, nilable: false, key: "container", getter: false, setter: false},
    current: {type: Api::Autoscaling::V2beta2::MetricValueStatus, nilable: false, key: "current", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta2::ContainerResourceMetricStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container is the name of the container in the pods of the scaling target
    @[::JSON::Field(key: "container", emit_null: true)]
    @[::YAML::Field(key: "container", emit_null: true)]
    property container : String

    # current contains the current value for the given metric
    @[::JSON::Field(key: "current", emit_null: true)]
    @[::YAML::Field(key: "current", emit_null: true)]
    property current : Api::Autoscaling::V2beta2::MetricValueStatus

    # Name is the name of the resource in question.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @container : String, @current : Api::Autoscaling::V2beta2::MetricValueStatus, @name : String)
    end
  end
end
