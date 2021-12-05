# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  @[::K8S::Properties(
    container: {type: String, nilable: false, key: "container", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    target_average_utilization: {type: Int32, nilable: true, key: "targetAverageUtilization", getter: false, setter: false},
    target_average_value: {type: Int32 | String, nilable: true, key: "targetAverageValue", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2beta1::ContainerResourceMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # container is the name of the container in the pods of the scaling target
    property container : String

    # name is the name of the resource in question.
    property name : String

    # targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    @[::JSON::Field(key: "targetAverageUtilization")]
    @[::YAML::Field(key: "targetAverageUtilization")]
    property target_average_utilization : Int32 | Nil

    # targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
    @[::JSON::Field(key: "targetAverageValue")]
    @[::YAML::Field(key: "targetAverageValue")]
    property target_average_value : Int32 | String | Nil

    def initialize(*, @container : String, @name : String, @target_average_utilization : Int32 | Nil = nil, @target_average_value : Int32 | String | Nil = nil)
    end
  end
end
