# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./policy_rule"

::K8S::Kubernetes::Resource.define_resource("rbac.authorization.k8s.io", "v1", "Role",
  namespace: "::K8S::Api::Rbac::V1",
  properties: [

    {name: "rules", kind: ::Array(::K8S::Api::Rbac::V1::PolicyRule), key: "rules", nilable: false, read_only: false, description: "Rules holds all the PolicyRules for this Role"},

  ],
  description: "Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.",
)
