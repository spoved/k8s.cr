# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus; end

require "./api_service_condition"

module K8S
  # Namespace holding the types for `KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus`.
  module Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus
    # Current service state of apiService.
    abstract def conditions : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?)
  end

  # APIServiceStatus contains derived information about an API server
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)", nilable: true, default: nil, read_only: false, description: "Current service state of apiService.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus < ::K8S::GenericObject
    include ::K8S::Types::KubeAggregator::Apis::Apiregistration::V1::APIServiceStatus

    # Current service state of apiService.
    def conditions : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?
      self.["conditions"].as(::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)
      self.["conditions"].as(::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?
      self.["conditions"]?.as(::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition)?)
      self.["conditions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::KubeAggregator::Apis::Apiregistration::V1::APIServiceCondition) },
      ])
end
  end
end
