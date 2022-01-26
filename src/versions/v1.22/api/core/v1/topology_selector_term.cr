# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::TopologySelectorTerm; end

require "./topology_selector_label_requirement"

module K8S
  # Namespace holding the types for `Api::Core::V1::TopologySelectorTerm`.
  module Types::Api::Core::V1::TopologySelectorTerm
    # A list of topology selector requirements by labels.
    abstract def match_label_expressions : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?
    # :ditto:
    abstract def match_label_expressions! : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)
    # :ditto:
    abstract def match_label_expressions? : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?
    # :ditto:
    abstract def match_label_expressions=(value : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?)
  end

  # A topology selector term represents the result of label queries. A null or empty topology selector term matches no objects. The requirements of them are ANDed. It provides a subset of functionality as NodeSelectorTerm. This is an alpha feature and may change in the future.
  @[::K8S::Properties(
    match_label_expressions: {key: "matchLabelExpressions", accessor: "match_label_expressions", kind: "::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)", nilable: true, default: nil, read_only: false, description: "A list of topology selector requirements by labels.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::TopologySelectorTerm < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::TopologySelectorTerm

    # A list of topology selector requirements by labels.
    def match_label_expressions : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?
      self.["matchLabelExpressions"].as(::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?)
    end

    # :ditto:
    def match_label_expressions! : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)
      self.["matchLabelExpressions"].as(::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?).not_nil!
    end

    # :ditto:
    def match_label_expressions? : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?
      self.["matchLabelExpressions"]?.as(::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?)
    end

    # :ditto:
    def match_label_expressions=(value : ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement)?)
      self.["matchLabelExpressions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "matchLabelExpressions", accessor: "match_label_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::TopologySelectorLabelRequirement) },
      ])
end
  end
end
