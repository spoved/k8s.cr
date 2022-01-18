# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::PodAffinityTerm; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodAffinityTerm`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::PodAffinityTerm
    alias Key = String
    alias ValueType = ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::Array(String) | String | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # A label query over a set of resources, in this case pods.
    abstract def label_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def label_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def label_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def label_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
    abstract def namespaces : ::Array(String)?
    # :ditto:
    abstract def namespaces! : ::Array(String)
    # :ditto:
    abstract def namespaces? : ::Array(String)?
    # :ditto:
    abstract def namespaces=(value : ::Array(String)?)
    # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    abstract def topology_key : String
    # :ditto:
    abstract def topology_key! : String
    # :ditto:
    abstract def topology_key? : String?
    # :ditto:
    abstract def topology_key=(value : String)
  end

  # Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running
  @[::K8S::Properties(
    label_selector: {key: "labelSelector", accessor: "label_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over a set of resources, in this case pods."},
    namespaces: {key: "namespaces", accessor: "namespaces", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means \"this pod's namespace\""},
    topology_key: {key: "topologyKey", accessor: "topology_key", kind: "String", nilable: false, default: nil, read_only: false, description: "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed."},
  )]
  class Api::Core::V1::PodAffinityTerm < ::K8S::Types::Api::Core::V1::PodAffinityTerm::Instance
    include ::K8S::Types::Api::Core::V1::PodAffinityTerm
    include ::K8S::Kubernetes::Object

    # A label query over a set of resources, in this case pods.
    def label_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["labelSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def label_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["labelSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def label_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["labelSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def label_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["labelSelector"] = value
    end

    # namespaces specifies which namespaces the labelSelector applies to (matches against); null or empty list means "this pod's namespace"
    def namespaces : ::Array(String)?
      self.["namespaces"].as(::Array(String)?)
    end

    # :ditto:
    def namespaces! : ::Array(String)
      self.["namespaces"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def namespaces? : ::Array(String)?
      self.["namespaces"]?.as(::Array(String)?)
    end

    # :ditto:
    def namespaces=(value : ::Array(String)?)
      self.["namespaces"] = value
    end

    # This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    def topology_key : String
      self.["topologyKey"].as(String)
    end

    # :ditto:
    def topology_key! : String
      self.["topologyKey"].as(String).not_nil!
    end

    # :ditto:
    def topology_key? : String?
      self.["topologyKey"]?.as(String?)
    end

    # :ditto:
    def topology_key=(value : String)
      self.["topologyKey"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "labelSelector", accessor: "label_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "namespaces", accessor: "namespaces", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "topologyKey", accessor: "topology_key", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
