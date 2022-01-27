# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ScopeSelector; end

require "./scoped_resource_selector_requirement"

module K8S
  # Namespace holding the types for `Api::Core::V1::ScopeSelector`.
  module Types::Api::Core::V1::ScopeSelector
    # A list of scope selector requirements by scope of the resources.
    abstract def match_expressions : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
    # :ditto:
    abstract def match_expressions! : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)
    # :ditto:
    abstract def match_expressions? : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)?
    # :ditto:
    abstract def match_expressions=(value : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement))
  end

  # A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
  @[::K8S::Properties(
    match_expressions: {key: "matchExpressions", accessor: "match_expressions", kind: "::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)", nilable: true, default: nil, read_only: false, description: "A list of scope selector requirements by scope of the resources.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ScopeSelector < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ScopeSelector
    k8s_object_accessor("matchExpressions", match_expressions : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement), true, false, "A list of scope selector requirements by scope of the resources.")

    def initialize(*, match_expressions : ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)? = nil)
      super()
      self.["matchExpressions"] = match_expressions
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "matchExpressions", accessor: "match_expressions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::ScopedResourceSelectorRequirement)},
    ])
  end
end
