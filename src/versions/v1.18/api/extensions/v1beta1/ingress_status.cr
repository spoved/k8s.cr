# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::IngressStatus; end

require "../../core/v1/load_balancer_status"

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::IngressStatus`.
  module Types::Api::Extensions::V1beta1::IngressStatus
    # LoadBalancer contains the current status of the load-balancer.
    abstract def load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer! : ::K8S::Api::Core::V1::LoadBalancerStatus
    # :ditto:
    abstract def load_balancer? : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer=(value : ::K8S::Api::Core::V1::LoadBalancerStatus?)
  end

  # IngressStatus describe the current state of the Ingress.
  @[::K8S::Properties(
    load_balancer: {key: "loadBalancer", accessor: "load_balancer", kind: "::K8S::Api::Core::V1::LoadBalancerStatus", nilable: true, default: nil, read_only: false, description: "LoadBalancer contains the current status of the load-balancer.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Extensions::V1beta1::IngressStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Extensions::V1beta1::IngressStatus

    # LoadBalancer contains the current status of the load-balancer.
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
