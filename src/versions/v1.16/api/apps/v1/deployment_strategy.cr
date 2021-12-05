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
    include ::YAML::Serializable

    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    @[::JSON::Field(key: "rollingUpdate")]
    @[::YAML::Field(key: "rollingUpdate")]
    property rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    property type : String | Nil

    def initialize(*, @rolling_update : Api::Apps::V1::RollingUpdateDeployment | Nil = nil, @type : String | Nil = nil)
    end
  end
end
