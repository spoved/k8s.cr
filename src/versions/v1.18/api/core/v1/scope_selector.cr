# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScopeSelector; end

require "./scoped_resource_selector_requirement"

module K8S
  # Namespace holding the types for `Api::Core::V1::ScopeSelector`.
  module Types::Api::Core::V1::ScopeSelector
    alias ValueType = ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # A list of scope selector requirements by scope of the resources.
    abstract def match_expressions : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
    # :ditto:
    abstract def match_expressions! : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)
    # :ditto:
    abstract def match_expressions? : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
    # :ditto:
    abstract def match_expressions=(value : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?)
  end

  # A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
  @[::K8S::Properties(
    match_expressions: {key: "matchExpressions", accessor: "match_expressions", kind: "::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of scope selector requirements by scope of the resources."},
  )]
  class Api::Core::V1::ScopeSelector < ::K8S::Types::Api::Core::V1::ScopeSelector::Instance
    include ::K8S::Types::Api::Core::V1::ScopeSelector
    include ::K8S::Kubernetes::Object

    # A list of scope selector requirements by scope of the resources.
    def match_expressions : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
      self.["matchExpressions"].as(::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions! : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)
      self.["matchExpressions"].as(::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?).not_nil!
    end

    # :ditto:
    def match_expressions? : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
      self.["matchExpressions"]?.as(::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?)
    end

    # :ditto:
    def match_expressions=(value : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?)
      self.["matchExpressions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "matchExpressions", accessor: "match_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement) },
      ])
end
  end
end
