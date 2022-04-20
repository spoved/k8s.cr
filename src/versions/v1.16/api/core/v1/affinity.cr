# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./node_affinity"
require "./pod_affinity"
require "./pod_anti_affinity"

::K8S::Kubernetes::Resource.define_object("Affinity",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "node_affinity", kind: ::K8S::Api::Core::V1::NodeAffinity, key: "nodeAffinity", nilable: true, read_only: false, description: "Describes node affinity scheduling rules for the pod."},
    {name: "pod_affinity", kind: ::K8S::Api::Core::V1::PodAffinity, key: "podAffinity", nilable: true, read_only: false, description: "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."},
    {name: "pod_anti_affinity", kind: ::K8S::Api::Core::V1::PodAntiAffinity, key: "podAntiAffinity", nilable: true, read_only: false, description: "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."},

  ]
)
