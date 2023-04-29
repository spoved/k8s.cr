# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./pod_failure_policy_rule"

::K8S::Kubernetes::Resource.define_object("PodFailurePolicy",
  namespace: "::K8S::Api::Batch::V1",
  properties: [

    {name: "rules", kind: ::Array(::K8S::Api::Batch::V1::PodFailurePolicyRule), key: "rules", nilable: false, read_only: false, description: "A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed."},

  ]
)
