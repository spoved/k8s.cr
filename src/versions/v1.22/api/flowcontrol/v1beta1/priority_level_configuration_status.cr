# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus; end

require "./priority_level_configuration_condition"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus
    alias Key = String
    alias ValueType = ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition) | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # `conditions` is the current state of "request-priority".
    abstract def conditions : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?)
  end

  # PriorityLevelConfigurationStatus represents the current state of a "request-priority".
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)", nilable: true, default: nil, read_only: false, description: "`conditions` is the current state of \"request-priority\"."},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus < ::K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus::Instance
    include ::K8S::Types::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationStatus
    include ::K8S::Kubernetes::Object

    # `conditions` is the current state of "request-priority".
    def conditions : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)
      self.["conditions"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition)?)
      self.["conditions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfigurationCondition) },
      ])
end
  end
end
