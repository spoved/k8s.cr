# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1beta1::EndpointConditions; end

module K8S
  # Namespace holding the types for `Api::Discovery::V1beta1::EndpointConditions`.
  module Types::Api::Discovery::V1beta1::EndpointConditions
    alias ValueType = ::Bool | Nil
    alias Instance = ::K8S::Object(ValueType)

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
    ready: {key: "ready", accessor: "ready", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Discovery::V1beta1::EndpointConditions < ::K8S::Types::Api::Discovery::V1beta1::EndpointConditions::Instance
    include ::K8S::Types::Api::Discovery::V1beta1::EndpointConditions
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
