# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  @[::K8S::Properties(
    container: {type: String, nilable: false, key: "container", getter: false, setter: false},
    current_average_utilization: {type: Int32, nilable: true, key: "currentAverageUtilization", getter: false, setter: false},
    current_average_value: {type: Int32 | String, nilable: false, key: "currentAverageValue", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ContainerResourceMetricStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # container is the name of the container in the pods of the scaling target
    @[::JSON::Field(key: "container", emit_null: true)]
    @[::YAML::Field(key: "container", emit_null: true)]
    property container : String

    # currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
    @[::JSON::Field(key: "currentAverageUtilization", emit_null: false)]
    @[::YAML::Field(key: "currentAverageUtilization", emit_null: false)]
    property current_average_utilization : Int32 | Nil

    # currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
    @[::JSON::Field(key: "currentAverageValue", emit_null: true)]
    @[::YAML::Field(key: "currentAverageValue", emit_null: true)]
    property current_average_value : Int32 | String

    # name is the name of the resource in question.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @container : String, @current_average_value : Int32 | String, @name : String, @current_average_utilization : Int32 | Nil = nil)
    end
  end
end