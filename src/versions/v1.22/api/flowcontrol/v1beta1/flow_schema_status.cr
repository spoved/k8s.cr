# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Flowcontrol::V1beta1::FlowSchemaStatus; end

require "./flow_schema_condition"

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::FlowSchemaStatus`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Flowcontrol::V1beta1::FlowSchemaStatus
    alias Key = String
    alias ValueType = ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition) | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # `conditions` is a list of the current states of FlowSchema.
    abstract def conditions : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?)
  end

  # FlowSchemaStatus represents the current state of a FlowSchema.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)", nilable: true, default: nil, read_only: false, description: "`conditions` is a list of the current states of FlowSchema."},
  )]
  class Api::Flowcontrol::V1beta1::FlowSchemaStatus < ::K8S::Types::Api::Flowcontrol::V1beta1::FlowSchemaStatus::Instance
    include ::K8S::Types::Api::Flowcontrol::V1beta1::FlowSchemaStatus
    include ::K8S::Kubernetes::Object

    # `conditions` is a list of the current states of FlowSchema.
    def conditions : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)
      self.["conditions"].as(::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition)?)
      self.["conditions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Flowcontrol::V1beta1::FlowSchemaCondition) },
      ])
end
  end
end
