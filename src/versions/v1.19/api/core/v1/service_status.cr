# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceStatus; end

require "./load_balancer_status"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceStatus`.
  module Types::Api::Core::V1::ServiceStatus
    # LoadBalancer contains the current status of the load-balancer, if one is present.
    abstract def load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer! : ::K8S::Api::Core::V1::LoadBalancerStatus
    # :ditto:
    abstract def load_balancer? : ::K8S::Api::Core::V1::LoadBalancerStatus?
    # :ditto:
    abstract def load_balancer=(value : ::K8S::Api::Core::V1::LoadBalancerStatus)
  end

  # ServiceStatus represents the current status of a service.
  @[::K8S::Properties(
    load_balancer: {key: "loadBalancer", accessor: "load_balancer", kind: "::K8S::Api::Core::V1::LoadBalancerStatus", nilable: true, default: nil, read_only: false, description: "LoadBalancer contains the current status of the load-balancer, if one is present.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ServiceStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ServiceStatus
    k8s_object_accessor("loadBalancer", load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus, true, false, "LoadBalancer contains the current status of the load-balancer, if one is present.")

    def initialize(*, load_balancer : ::K8S::Api::Core::V1::LoadBalancerStatus? = nil)
      super()
      self.["loadBalancer"] = load_balancer
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "loadBalancer", accessor: "load_balancer", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LoadBalancerStatus},
    ])
  end
end
