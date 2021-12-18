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
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
    @[::JSON::Field(key: "clusterRoleSelectors", emit_null: false)]
    @[::YAML::Field(key: "clusterRoleSelectors", emit_null: false)]
    property cluster_role_selectors : Array(Apimachinery::Apis::Meta::V1::LabelSelector) | Nil

    def initialize(*, @cluster_role_selectors : Array(Apimachinery::Apis::Meta::V1::LabelSelector) | Nil = nil)
    end
  end
end
