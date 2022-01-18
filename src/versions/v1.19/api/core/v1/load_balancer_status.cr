# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::LoadBalancerStatus; end

require "./load_balancer_ingress"

module K8S
  # Namespace holding the types for `Api::Core::V1::LoadBalancerStatus`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::LoadBalancerStatus
    alias Key = String
    alias ValueType = ::Array(::K8S::Api::Core::V1::LoadBalancerIngress) | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    abstract def ingress : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?
    # :ditto:
    abstract def ingress! : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)
    # :ditto:
    abstract def ingress? : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?
    # :ditto:
    abstract def ingress=(value : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?)
  end

  # LoadBalancerStatus represents the status of a load-balancer.
  @[::K8S::Properties(
    ingress: {key: "ingress", accessor: "ingress", kind: "::Array(::K8S::Api::Core::V1::LoadBalancerIngress)", nilable: true, default: nil, read_only: false, description: "Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points."},
  )]
  class Api::Core::V1::LoadBalancerStatus < ::K8S::Types::Api::Core::V1::LoadBalancerStatus::Instance
    include ::K8S::Types::Api::Core::V1::LoadBalancerStatus
    include ::K8S::Kubernetes::Object

    # Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    def ingress : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?
      self.["ingress"].as(::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?)
    end

    # :ditto:
    def ingress! : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)
      self.["ingress"].as(::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?).not_nil!
    end

    # :ditto:
    def ingress? : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?
      self.["ingress"]?.as(::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?)
    end

    # :ditto:
    def ingress=(value : ::Array(::K8S::Api::Core::V1::LoadBalancerIngress)?)
      self.["ingress"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ingress", accessor: "ingress", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::LoadBalancerIngress) },
      ])
end
  end
end
