# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
  class Api::Core::V1::PodAffinityTerm
    # A label query over a set of resources, in this case pods.
    property label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
    property namespaces : Array(String) | Nil

    # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    property topology_key : String

    ::YAML.mapping({
      label_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "labelSelector", getter: false, setter: false},
      namespaces:     {type: Array(String), nilable: true, key: "namespaces", getter: false, setter: false},
      topology_key:   {type: String, nilable: false, key: "topologyKey", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      label_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "labelSelector", getter: false, setter: false},
      namespaces:     {type: Array(String), nilable: true, key: "namespaces", getter: false, setter: false},
      topology_key:   {type: String, nilable: false, key: "topologyKey", getter: false, setter: false},
    }, true)

    def initialize(*, @topology_key : String, @label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @namespaces : Array | Nil = nil)
    end
  end
end
