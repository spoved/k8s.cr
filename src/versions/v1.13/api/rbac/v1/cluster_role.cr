# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./aggregation_rule"
require "./policy_rule"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1", "ClusterRole",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "aggregation_rule", kind: ::K8S::Api::Rbac::V1::AggregationRule, key: "aggregationRule", nilable: true, read_only: false, description: "AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller."},
    {name: "rules", kind: ::Array(::K8S::Api::Rbac::V1::PolicyRule), key: "rules", nilable: false, read_only: false, description: "Rules holds all the PolicyRules for this ClusterRole"},

  ],
  description: "ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.",
  versions: [{group: "rbac.authorization.k8s.io", kind: "ClusterRole", version: "v1"}],
)
