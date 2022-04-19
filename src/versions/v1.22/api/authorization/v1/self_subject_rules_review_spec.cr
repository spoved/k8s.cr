# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("SelfSubjectRulesReviewSpec",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace to evaluate rules for. Required."},

  ]
)
