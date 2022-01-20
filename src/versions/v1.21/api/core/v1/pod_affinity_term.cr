# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodAffinityTerm; end

require "../../../apimachinery/apis/meta/v1/label_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodAffinityTerm`.
  module Types::Api::Core::V1::PodAffinityTerm
    alias ValueType = ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector | ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A label query over a set of resources, in this case pods.
    abstract def label_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def label_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def label_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def label_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces. This field is alpha-level and is only honored when PodAffinityNamespaceSelector feature is enabled.
    abstract def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
    # :ditto:
    abstract def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
    # :ditto:
    abstract def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    # namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace"
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
    label_selector: {key: "labelSelector", accessor: "label_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over a set of resources, in this case pods.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace_selector: {key: "namespaceSelector", accessor: "namespace_selector", kind: "::K8S::Apimachinery::Apis::Meta::V1::LabelSelector", nilable: true, default: nil, read_only: false, description: "A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces. This field is alpha-level and is only honored when PodAffinityNamespaceSelector feature is enabled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespaces: {key: "namespaces", accessor: "namespaces", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    topology_key: {key: "topologyKey", accessor: "topology_key", kind: "String", nilable: false, default: nil, read_only: false, description: "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
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

    # A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces. This field is alpha-level and is only honored when PodAffinityNamespaceSelector feature is enabled.
    def namespace_selector : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector! : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector
      self.["namespaceSelector"].as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?).not_nil!
    end

    # :ditto:
    def namespace_selector? : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?
      self.["namespaceSelector"]?.as(::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
    end

    # :ditto:
    def namespace_selector=(value : ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector?)
      self.["namespaceSelector"] = value
    end

    # namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace"
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
        { key: "namespaceSelector", accessor: "namespace_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector },
        { key: "namespaces", accessor: "namespaces", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "topologyKey", accessor: "topology_key", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
