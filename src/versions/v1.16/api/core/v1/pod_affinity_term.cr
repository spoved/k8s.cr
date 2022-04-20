# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_object("PodAffinityTerm",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "label_selector", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "labelSelector", nilable: true, read_only: false, description: "A label query over a set of resources, in this case pods."},
    {name: "namespaces", kind: ::Array(String), key: "namespaces", nilable: true, read_only: false, description: "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""},
    {name: "topology_key", kind: String, key: "topologyKey", nilable: false, read_only: false, description: "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."},

  ]
)
