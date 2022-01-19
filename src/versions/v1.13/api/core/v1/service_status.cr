# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceStatus; end

require "./load_balancer_status"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceStatus`.
  module Types::Api::Core::V1::ServiceStatus
    alias ValueType = ::K8S::Api::Core::V1::LoadBalancerStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    abstract def load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer! : ::K8S::Api::Core::V1::LoadBalancerStatus
    # :ditto:
    abstract def load_balancer? : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer=(value : ::K8S::Api::Core::V1::LoadBalancerStatus?)
  end

  # ServiceStatus represents the current status of a service.
  @[::K8S::Properties(
    load_balancer: {key: "loadBalancer", accessor: "load_balancer", kind: "::K8S::Api::Core::V1::LoadBalancerStatus", nilable: true, default: nil, read_only: false, description: "LoadBalancer contains the current status of the load-balancer, if one is present."},
  )]
  class Api::Core::V1::ServiceStatus < ::K8S::Types::Api::Core::V1::ServiceStatus::Instance
    include ::K8S::Types::Api::Core::V1::ServiceStatus
    include ::K8S::Kubernetes::Object

    # LoadBalancer contains the current status of the load-balancer, if one is present.
    def load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus?
      self.["loadBalancer"].as(::K8S::Api::Core::V1::LoadBalancerStatus?)
    end

    # :ditto:
    def load_balancer! : ::K8S::Api::Core::V1::LoadBalancerStatus
      self.["loadBalancer"].as(::K8S::Api::Core::V1::LoadBalancerStatus?).not_nil!
    end

    # :ditto:
    def load_balancer? : ::K8S::Api::Core::V1::LoadBalancerStatus?
      self.["loadBalancer"]?.as(::K8S::Api::Core::V1::LoadBalancerStatus?)
    end

    # :ditto:
    def load_balancer=(value : ::K8S::Api::Core::V1::LoadBalancerStatus?)
      self.["loadBalancer"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "loadBalancer", accessor: "load_balancer", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LoadBalancerStatus },
      ])
end
  end
end
