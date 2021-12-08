# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
  @[::K8S::Properties(
    rolling_update: {type: Api::Apps::V1::RollingUpdateStatefulSetStrategy, nilable: true, key: "rollingUpdate", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Apps::V1::StatefulSetUpdateStrategy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
    @[::JSON::Field(key: "rollingUpdate", emit_null: false)]
    @[::YAML::Field(key: "rollingUpdate", emit_null: false)]
    property rolling_update : Api::Apps::V1::RollingUpdateStatefulSetStrategy | Nil

    # Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
    #
    # Possible enum values:
    #  - `"OnDelete"` triggers the legacy behavior. Version tracking and ordered rolling restarts are disabled. Pods are recreated from the StatefulSetSpec when they are manually deleted. When a scale operation is performed with this strategy,specification version indicated by the StatefulSet's currentRevision.
    #  - `"RollingUpdate"` indicates that update will be applied to all Pods in the StatefulSet with respect to the StatefulSet ordering constraints. When a scale operation is performed with this strategy, new Pods will be created from the specification version indicated by the StatefulSet's updateRevision.
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateStatefulSetStrategy | Nil = nil, @type : String | Nil = nil)
    end
  end
end
