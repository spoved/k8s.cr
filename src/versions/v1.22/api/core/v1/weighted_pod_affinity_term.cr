# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./pod_affinity_term"

::K8S::Kubernetes::Resource.define_object("WeightedPodAffinityTerm",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "pod_affinity_term", kind: ::K8S::Api::Core::V1::PodAffinityTerm, key: "podAffinityTerm", nilable: false, read_only: false, description: "Required. A pod affinity term, associated with the corresponding weight."},
    {name: "weight", kind: Int32, key: "weight", nilable: false, read_only: false, description: "weight associated with matching the corresponding podAffinityTerm, in the range 1-100."},

  ]
)
