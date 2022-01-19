# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::LabelSelector; end

require "./label_selector_requirement"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::LabelSelector`.
  module Types::Apimachinery::Apis::Meta::V1::LabelSelector
    alias ValueType = ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement) | ::Hash(String, String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # matchExpressions is a list of label selector requirements. The requirements are ANDed.
    abstract def match_expressions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?
    # :ditto:
    abstract def match_expressions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)
    # :ditto:
    abstract def match_expressions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?
    # :ditto:
    abstract def match_expressions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?)
    # matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    abstract def match_labels : ::Hash(String, String)?
    # :ditto:
    abstract def match_labels! : ::Hash(String, String)
    # :ditto:
    abstract def match_labels? : ::Hash(String, String)?
    # :ditto:
    abstract def match_labels=(value : ::Hash(String, String)?)
  end

  # A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
  @[::K8S::Properties(
    match_expressions: {key: "matchExpressions", accessor: "match_expressions", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "matchExpressions is a list of label selector requirements. The requirements are ANDed."},
    match_labels: {key: "matchLabels", accessor: "match_labels", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."},
  )]
  class Apimachinery::Apis::Meta::V1::LabelSelector < ::K8S::Types::Apimachinery::Apis::Meta::V1::LabelSelector::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::LabelSelector
    include ::K8S::Kubernetes::Object

    # matchExpressions is a list of label selector requirements. The requirements are ANDed.
    def match_expressions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?
      self.["matchExpressions"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)
      self.["matchExpressions"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?).not_nil!
    end

    # :ditto:
    def match_expressions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?
      self.["matchExpressions"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement)?)
      self.["matchExpressions"] = value
    end

    # matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    def match_labels : ::Hash(String, String)?
      self.["matchLabels"].as(::Hash(String, String)?)
    end

    # :ditto:
    def match_labels! : ::Hash(String, String)
      self.["matchLabels"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def match_labels? : ::Hash(String, String)?
      self.["matchLabels"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def match_labels=(value : ::Hash(String, String)?)
      self.["matchLabels"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "matchExpressions", accessor: "match_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement) },
        { key: "matchLabels", accessor: "match_labels", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
      ])
end
  end
end
