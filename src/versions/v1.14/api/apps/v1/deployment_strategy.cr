# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DeploymentStrategy describes how to replace existing pods with new ones.
  @[::K8S::Properties(
    rolling_update: {type: Api::Apps::V1::RollingUpdateDeployment, nilable: true, key: "rollingUpdate", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Apps::V1::DeploymentStrategy
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    @[::JSON::Field(key: "rollingUpdate", emit_null: false)]
    @[::YAML::Field(key: "rollingUpdate", emit_null: false)]
    property rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil = nil, @type : String | Nil = nil)
    end
  end
end
