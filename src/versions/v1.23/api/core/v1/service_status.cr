# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceStatus; end

require "../../../apimachinery/apis/meta/v1/condition"
require "./load_balancer_status"

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceStatus`.
  module Types::Api::Core::V1::ServiceStatus
    alias ValueType = ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition) | ::K8S::Api::Core::V1::LoadBalancerStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Current service state
    abstract def conditions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?)
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
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)", nilable: true, default: nil, read_only: false, description: "Current service state", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["type"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
    load_balancer: {key: "loadBalancer", accessor: "load_balancer", kind: "::K8S::Api::Core::V1::LoadBalancerStatus", nilable: true, default: nil, read_only: false, description: "LoadBalancer contains the current status of the load-balancer, if one is present.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ServiceStatus < ::K8S::Types::Api::Core::V1::ServiceStatus::Instance
    include ::K8S::Types::Api::Core::V1::ServiceStatus
    include ::K8S::Kubernetes::Object

    # Current service state
    def conditions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
      self.["conditions"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)
      self.["conditions"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?
      self.["conditions"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition)?)
      self.["conditions"] = value
    end

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
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition) },
        { key: "loadBalancer", accessor: "load_balancer", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LoadBalancerStatus },
      ])
end
  end
end
