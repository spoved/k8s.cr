# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::DaemonSetUpdateStrategy; end

require "./rolling_update_daemon_set"

module K8S
  # Namespace holding the types for `Api::Apps::V1::DaemonSetUpdateStrategy`.
  module Types::Api::Apps::V1::DaemonSetUpdateStrategy
    alias ValueType = ::K8S::Api::Apps::V1::RollingUpdateDaemonSet | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Rolling update config params. Present only if type = "RollingUpdate".
    abstract def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
    # :ditto:
    abstract def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet
    # :ditto:
    abstract def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
    # :ditto:
    abstract def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?)
    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String?)
  end

  # DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
  @[::K8S::Properties(
    rolling_update: {key: "rollingUpdate", accessor: "rolling_update", kind: "::K8S::Api::Apps::V1::RollingUpdateDaemonSet", nilable: true, default: nil, read_only: false, description: "Rolling update config params. Present only if type = \"RollingUpdate\"."},
    type: {key: "type", accessor: "type", kind: "String", nilable: true, default: nil, read_only: false, description: "Type of daemon set update. Can be \"RollingUpdate\" or \"OnDelete\". Default is RollingUpdate."},
  )]
  class Api::Apps::V1::DaemonSetUpdateStrategy < ::K8S::Types::Api::Apps::V1::DaemonSetUpdateStrategy::Instance
    include ::K8S::Types::Api::Apps::V1::DaemonSetUpdateStrategy
    include ::K8S::Kubernetes::Object

    # Rolling update config params. Present only if type = "RollingUpdate".
    def rolling_update : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
      self.["rollingUpdate"].as(::K8S::Api::Apps::V1::RollingUpdateDaemonSet?)
    end

    # :ditto:
    def rolling_update! : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet
      self.["rollingUpdate"].as(::K8S::Api::Apps::V1::RollingUpdateDaemonSet?).not_nil!
    end

    # :ditto:
    def rolling_update? : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?
      self.["rollingUpdate"]?.as(::K8S::Api::Apps::V1::RollingUpdateDaemonSet?)
    end

    # :ditto:
    def rolling_update=(value : ::K8S::Api::Apps::V1::RollingUpdateDaemonSet?)
      self.["rollingUpdate"] = value
    end

    # Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
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
        { key: "rollingUpdate", accessor: "rolling_update", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Apps::V1::RollingUpdateDaemonSet },
        { key: "type", accessor: "type", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
