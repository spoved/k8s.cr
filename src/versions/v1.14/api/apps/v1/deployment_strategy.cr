# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DeploymentStrategy; end

require "./rolling_update_deployment"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DeploymentStrategy`.
  module Types::Api::Apps::V1::DeploymentStrategy
    alias ValueType = ::K8S::Api::Apps::V1::RollingUpdateDeployment | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    abstract def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDeployment?
    # :ditto:
    abstract def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateDeployment
    # :ditto:
    abstract def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateDeployment?
    # :ditto:
    abstract def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateDeployment?)
    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
  end

  # DeploymentStrategy describes how to replace existing pods with new ones.
  @[::K8S::Properties(
    rolling_update: {key: "rollingUpdate", accessor: "rolling_update", kind: "::K8S::Api::Apps::V1::RollingUpdateDeployment", nilable: true, default: nil, read_only: false, description: "Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate."},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of deployment. Can be \"Recreate\" or \"RollingUpdate\". Default is RollingUpdate."},
  )]
  class Api::Apps::V1::DeploymentStrategy < ::K8S::Types::Api::Apps::V1::DeploymentStrategy::Instance
    include ::K8S::Types::Api::Apps::V1::DeploymentStrategy
    include ::K8S::Kubernetes::Object

    # Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDeployment?
      self.["rollingUpdate"].as(::K8S::Api::Apps::V1::RollingUpdateDeployment?)
    end

    # :ditto:
    def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateDeployment
      self.["rollingUpdate"].as(::K8S::Api::Apps::V1::RollingUpdateDeployment?).not_nil!
    end

    # :ditto:
    def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateDeployment?
      self.["rollingUpdate"]?.as(::K8S::Api::Apps::V1::RollingUpdateDeployment?)
    end

    # :ditto:
    def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateDeployment?)
      self.["rollingUpdate"] = value
    end

    # Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    def type : String?
      self.["type"].as(String?)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String?).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String?)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "rollingUpdate", accessor: "rolling_update", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::RollingUpdateDeployment },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
