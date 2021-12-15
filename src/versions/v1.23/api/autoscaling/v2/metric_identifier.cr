# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MetricIdentifier defines the name and optionally selector for a metric
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
  )]
  class Api::Autoscaling::V2::MetricIdentifier
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # name is the name of the given metric
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    @[::JSON::Field(key: "selector", emit_null: false)]
    @[::YAML::Field(key: "selector", emit_null: false)]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    def initialize(*, @name : String, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end
end
