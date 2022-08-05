# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("AggregationRule",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "cluster_role_selectors", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector), key: "clusterRoleSelectors", nilable: true, read_only: false, description: "ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added"},

  ]
)
