# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSelectorTerm; end

require "./node_selector_requirement"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSelectorTerm`.
  module Types::Api::Core::V1::NodeSelectorTerm
    alias ValueType = ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A list of node selector requirements by node's labels.
    abstract def match_expressions : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_expressions! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
    # :ditto:
    abstract def match_expressions? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_expressions=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
    # A list of node selector requirements by node's fields.
    abstract def match_fields : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_fields! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
    # :ditto:
    abstract def match_fields? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_fields=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
  end

  # A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  @[::K8S::Properties(
    match_expressions: {key: "matchExpressions", accessor: "match_expressions", kind: "::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of node selector requirements by node's labels."},
    match_fields: {key: "matchFields", accessor: "match_fields", kind: "::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of node selector requirements by node's fields."},
  )]
  class Api::Core::V1::NodeSelectorTerm < ::K8S::Types::Api::Core::V1::NodeSelectorTerm::Instance
    include ::K8S::Types::Api::Core::V1::NodeSelectorTerm
    include ::K8S::Kubernetes::Object

    # A list of node selector requirements by node's labels.
    def match_expressions : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
      self.["matchExpressions"].as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
      self.["matchExpressions"].as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?).not_nil!
    end

    # :ditto:
    def match_expressions? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
      self.["matchExpressions"]?.as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
      self.["matchExpressions"] = value
    end

    # A list of node selector requirements by node's fields.
    def match_fields : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
      self.["matchFields"].as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
    end

    # :ditto:
    def match_fields! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
      self.["matchFields"].as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?).not_nil!
    end

    # :ditto:
    def match_fields? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
      self.["matchFields"]?.as(::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
    end

    # :ditto:
    def match_fields=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?)
      self.["matchFields"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "matchExpressions", accessor: "match_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement) },
        { key: "matchFields", accessor: "match_fields", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement) },
      ])
end
  end
end
