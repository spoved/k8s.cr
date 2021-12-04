# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
  class Api::Autoscaling::V2beta2::ContainerResourceMetricSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # container is the name of the container in the pods of the scaling target
    property container : String

    # name is the name of the resource in question.
    property name : String

    # target specifies the target value for the given metric
    property target : Api::Autoscaling::V2beta2::MetricTarget

    ::YAML.mapping({
      container: {type: String, nilable: false, key: "container", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      target:    {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      container: {type: String, nilable: false, key: "container", getter: false, setter: false},
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      target:    {type: Api::Autoscaling::V2beta2::MetricTarget, nilable: false, key: "target", getter: false, setter: false},
    }, true)

    def initialize(*, @container : String, @name : String, @target : Api::Autoscaling::V2beta2::MetricTarget)
    end
  end
end
