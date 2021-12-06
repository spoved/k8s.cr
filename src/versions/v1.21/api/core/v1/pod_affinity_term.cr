# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
  @[::K8S::Properties(
    label_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "labelSelector", getter: false, setter: false},
    namespace_selector: {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "namespaceSelector", getter: false, setter: false},
    namespaces: {type: Array(String), nilable: true, key: "namespaces", getter: false, setter: false},
    topology_key: {type: String, nilable: false, key: "topologyKey", getter: false, setter: false},
  )]
  class Api::Core::V1::PodAffinityTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A label query over a set of resources, in this case pods.
    @[::JSON::Field(key: "labelSelector", emit_null: false)]
    @[::YAML::Field(key: "labelSelector", emit_null: false)]
    property label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces. This field is alpha-level and is only honored when PodAffinityNamespaceSelector feature is enabled.
    @[::JSON::Field(key: "namespaceSelector", emit_null: false)]
    @[::YAML::Field(key: "namespaceSelector", emit_null: false)]
    property namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace"
    @[::JSON::Field(key: "namespaces", emit_null: false)]
    @[::YAML::Field(key: "namespaces", emit_null: false)]
    property namespaces : Array(String) | Nil

    # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    @[::JSON::Field(key: "topologyKey", emit_null: true)]
    @[::YAML::Field(key: "topologyKey", emit_null: true)]
    property topology_key : String

    def initialize(*, @topology_key : String, @label_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @namespace_selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @namespaces : Array | Nil = nil)
    end
  end
end
