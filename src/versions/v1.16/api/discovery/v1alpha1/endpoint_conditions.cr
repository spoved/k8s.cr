# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Discovery::V1alpha1::EndpointConditions; end

module K8S
  # Namespace holding the types for `Api::Discovery::V1alpha1::EndpointConditions`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Discovery::V1alpha1::EndpointConditions
    alias Key = String
    alias ValueType = ::Bool | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
    abstract def ready : ::Bool?
    # :ditto:
    abstract def ready! : ::Bool
    # :ditto:
    abstract def ready? : ::Bool?
    # :ditto:
    abstract def ready=(value : ::Bool?)
  end

  # EndpointConditions represents the current condition of an endpoint.
  @[::K8S::Properties(
    ready: {key: "ready", accessor: "ready", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready."},
  )]
  class Api::Discovery::V1alpha1::EndpointConditions < ::K8S::Types::Api::Discovery::V1alpha1::EndpointConditions::Instance
    include ::K8S::Types::Api::Discovery::V1alpha1::EndpointConditions
    include ::K8S::Kubernetes::Object

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.
    def ready : ::Bool?
      self.["ready"].as(::Bool?)
    end

    # :ditto:
    def ready! : ::Bool
      self.["ready"].as(::Bool?).not_nil!
    end

    # :ditto:
    def ready? : ::Bool?
      self.["ready"]?.as(::Bool?)
    end

    # :ditto:
    def ready=(value : ::Bool?)
      self.["ready"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ready", accessor: "ready", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
