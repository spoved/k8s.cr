# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/condition"

::K8S::Kubernetes::Resource.define_object("NetworkPolicyStatus",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "conditions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Condition), key: "conditions", nilable: true, read_only: false, description: "Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state"},

  ]
)
