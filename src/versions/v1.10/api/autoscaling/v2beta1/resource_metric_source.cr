# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  class Api::Autoscaling::V2beta1::ResourceMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # name is the name of the resource in question.
    property name : String

    # targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
    property target_average_utilization : Int32 | Nil

    # targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
    property target_average_value : Int32 | Nil

    ::YAML.mapping({
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      target_average_utilization: {type: Int32, nilable: true, key: "targetAverageUtilization", getter: false, setter: false},
      target_average_value:       {type: Int32, nilable: true, key: "targetAverageValue", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      target_average_utilization: {type: Int32, nilable: true, key: "targetAverageUtilization", getter: false, setter: false},
      target_average_value:       {type: Int32, nilable: true, key: "targetAverageValue", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @target_average_utilization : Int32 | Nil = nil, @target_average_value : Int32 | Nil = nil)
    end
  end
end
