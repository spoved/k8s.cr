# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeSelectorTerm; end

require "./node_selector_requirement"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeSelectorTerm`.
  module Types::Api::Core::V1::NodeSelectorTerm
    # A list of node selector requirements by node's labels.
    abstract def match_expressions : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_expressions! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
    # :ditto:
    abstract def match_expressions? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_expressions=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement))
    # A list of node selector requirements by node's fields.
    abstract def match_fields : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_fields! : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)
    # :ditto:
    abstract def match_fields? : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)?
    # :ditto:
    abstract def match_fields=(value : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement))
  end

  # A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
  @[::K8S::Properties(
    match_expressions: {key: "matchExpressions", accessor: "match_expressions", kind: "::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of node selector requirements by node's labels.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    match_fields: {key: "matchFields", accessor: "match_fields", kind: "::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of node selector requirements by node's fields.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeSelectorTerm < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NodeSelectorTerm
    k8s_object_accessor("matchExpressions", match_expressions : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement), true, false, "A list of node selector requirements by node's labels.")
    k8s_object_accessor("matchFields", match_fields : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement), true, false, "A list of node selector requirements by node's fields.")

    def initialize(*, match_expressions : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)? = nil, match_fields : ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)? = nil)
      super()
      self.["matchExpressions"] = match_expressions
      self.["matchFields"] = match_fields
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "matchExpressions", accessor: "match_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)},
      {key: "matchFields", accessor: "match_fields", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NodeSelectorRequirement)},
    ])
  end
end
