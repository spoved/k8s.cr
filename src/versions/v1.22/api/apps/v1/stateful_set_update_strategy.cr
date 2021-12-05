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
    @[::JSON::Field(key: "rollingUpdate")]
    @[::YAML::Field(key: "rollingUpdate")]
    property rolling_update : Api::Apps::V1::RollingUpdateStatefulSetStrategy | Nil

    # Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateStatefulSetStrategy | Nil = nil, @type : String | Nil = nil)
    end
  end
end
