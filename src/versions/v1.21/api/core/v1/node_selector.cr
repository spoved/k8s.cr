# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::NodeSelector; end

require "./node_selector_term"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSelector`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::NodeSelector
    alias Key = String
    alias ValueType = ::Array(::K8S::Api::Core::V1::NodeSelectorTerm) | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # Required. A list of node selector terms. The terms are ORed.
    abstract def node_selector_terms : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)
    # :ditto:
    abstract def node_selector_terms! : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)
    # :ditto:
    abstract def node_selector_terms? : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)?
    # :ditto:
    abstract def node_selector_terms=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm))
  end

  # A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
  @[::K8S::Properties(
    node_selector_terms: {key: "nodeSelectorTerms", accessor: "node_selector_terms", kind: "::Array(::K8S::Api::Core::V1::NodeSelectorTerm)", nilable: false, default: nil, read_only: false, description: "Required. A list of node selector terms. The terms are ORed."},
  )]
  class Api::Core::V1::NodeSelector < ::K8S::Types::Api::Core::V1::NodeSelector::Instance
    include ::K8S::Types::Api::Core::V1::NodeSelector
    include ::K8S::Kubernetes::Object

    # Required. A list of node selector terms. The terms are ORed.
    def node_selector_terms : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)
      self.["nodeSelectorTerms"].as(::Array(::K8S::Api::Core::V1::NodeSelectorTerm))
    end

    # :ditto:
    def node_selector_terms! : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)
      self.["nodeSelectorTerms"].as(::Array(::K8S::Api::Core::V1::NodeSelectorTerm)).not_nil!
    end

    # :ditto:
    def node_selector_terms? : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm)?
      self.["nodeSelectorTerms"]?.as(::Array(::K8S::Api::Core::V1::NodeSelectorTerm)?)
    end

    # :ditto:
    def node_selector_terms=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorTerm))
      self.["nodeSelectorTerms"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nodeSelectorTerms", accessor: "node_selector_terms", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeSelectorTerm) },
      ])
end
  end
end
