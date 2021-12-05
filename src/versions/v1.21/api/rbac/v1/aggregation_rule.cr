# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
  @[::K8S::Properties(
    cluster_role_selectors: {type: Array(Apimachinery::Apis::Meta::V1::LabelSelector), nilable: true, key: "clusterRoleSelectors", getter: false, setter: false},
  )]
  class Api::Rbac::V1::AggregationRule
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    @[::JSON::Field(key: "clusterRoleSelectors")]
    @[::YAML::Field(key: "clusterRoleSelectors")]
    property cluster_role_selectors : Array(Apimachinery::Apis::Meta::V1::LabelSelector) | Nil

    def initialize(*, @cluster_role_selectors : Array | Nil = nil)
    end
  end
end
