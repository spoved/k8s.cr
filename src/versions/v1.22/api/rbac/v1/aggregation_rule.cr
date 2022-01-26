# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Rbac::V1::AggregationRule; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Rbac::V1::AggregationRule`.
  module Types::Api::Rbac::V1::AggregationRule
    # ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    abstract def cluster_role_selectors : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?
    # :ditto:
    abstract def cluster_role_selectors! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
    # :ditto:
    abstract def cluster_role_selectors? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?
    # :ditto:
    abstract def cluster_role_selectors=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?)
  end

  # AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
  @[::K8S::Properties(
    cluster_role_selectors: {key: "clusterRoleSelectors", accessor: "cluster_role_selectors", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)", nilable: true, default: nil, read_only: false, description: "ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Rbac::V1::AggregationRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Rbac::V1::AggregationRule

    # ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    def cluster_role_selectors : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?
      self.["clusterRoleSelectors"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?)
    end

    # :ditto:
    def cluster_role_selectors! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)
      self.["clusterRoleSelectors"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?).not_nil!
    end

    # :ditto:
    def cluster_role_selectors? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?
      self.["clusterRoleSelectors"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?)
    end

    # :ditto:
    def cluster_role_selectors=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector)?)
      self.["clusterRoleSelectors"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clusterRoleSelectors", accessor: "cluster_role_selectors", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector) },
      ])
end
  end
end
