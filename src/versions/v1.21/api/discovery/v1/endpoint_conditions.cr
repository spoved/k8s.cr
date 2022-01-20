# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1::EndpointConditions; end

module K8S
  # Namespace holding the types for `Api::Discovery::V1::EndpointConditions`.
  module Types::Api::Discovery::V1::EndpointConditions
    alias ValueType = ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
    abstract def ready : ::Bool?
    # :ditto:
    abstract def ready! : ::Bool
    # :ditto:
    abstract def ready? : ::Bool?
    # :ditto:
    abstract def ready=(value : ::Bool?)
    # serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    abstract def serving : ::Bool?
    # :ditto:
    abstract def serving! : ::Bool
    # :ditto:
    abstract def serving? : ::Bool?
    # :ditto:
    abstract def serving=(value : ::Bool?)
    # terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    abstract def terminating : ::Bool?
    # :ditto:
    abstract def terminating! : ::Bool
    # :ditto:
    abstract def terminating? : ::Bool?
    # :ditto:
    abstract def terminating=(value : ::Bool?)
  end

  # EndpointConditions represents the current condition of an endpoint.
  @[::K8S::Properties(
    ready: {key: "ready", accessor: "ready", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    serving: {key: "serving", accessor: "serving", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    terminating: {key: "terminating", accessor: "terminating", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Discovery::V1::EndpointConditions < ::K8S::Types::Api::Discovery::V1::EndpointConditions::Instance
    include ::K8S::Types::Api::Discovery::V1::EndpointConditions
    include ::K8S::Kubernetes::Object

    # ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be "true" for terminating endpoints.
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

    # serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    def serving : ::Bool?
      self.["serving"].as(::Bool?)
    end

    # :ditto:
    def serving! : ::Bool
      self.["serving"].as(::Bool?).not_nil!
    end

    # :ditto:
    def serving? : ::Bool?
      self.["serving"]?.as(::Bool?)
    end

    # :ditto:
    def serving=(value : ::Bool?)
      self.["serving"] = value
    end

    # terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating. This field can be enabled with the EndpointSliceTerminatingCondition feature gate.
    def terminating : ::Bool?
      self.["terminating"].as(::Bool?)
    end

    # :ditto:
    def terminating! : ::Bool
      self.["terminating"].as(::Bool?).not_nil!
    end

    # :ditto:
    def terminating? : ::Bool?
      self.["terminating"]?.as(::Bool?)
    end

    # :ditto:
    def terminating=(value : ::Bool?)
      self.["terminating"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ready", accessor: "ready", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "serving", accessor: "serving", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "terminating", accessor: "terminating", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
