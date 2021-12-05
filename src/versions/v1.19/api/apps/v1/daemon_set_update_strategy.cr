# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
  @[::K8S::Properties(
    rolling_update: {type: Api::Apps::V1::RollingUpdateDaemonSet, nilable: true, key: "rollingUpdate", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Apps::V1::DaemonSetUpdateStrategy
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Rolling update config params. Present only if type = "RollingUpdate".
    @[::JSON::Field(key: "rollingUpdate")]
    @[::YAML::Field(key: "rollingUpdate")]
    property rolling_update : Api::Apps::V1::RollingUpdateDaemonSet | Nil

    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateDaemonSet | Nil = nil, @type : String | Nil = nil)
    end
  end
end
