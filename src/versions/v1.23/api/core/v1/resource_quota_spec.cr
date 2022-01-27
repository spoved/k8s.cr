# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceQuotaSpec; end

require "./scope_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceQuotaSpec`.
  module Types::Api::Core::V1::ResourceQuotaSpec
    # hard is the set of desired hard limits for each named resource. More info: [[https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)](https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/))
    abstract def hard : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def hard? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard=(value : ::Hash(String, ::Int32 | ::String))
    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    abstract def scope_selector : ::K8S::Api::Core::V1::ScopeSelector?
    # :ditto:
    abstract def scope_selector! : ::K8S::Api::Core::V1::ScopeSelector
    # :ditto:
    abstract def scope_selector? : ::K8S::Api::Core::V1::ScopeSelector?
    # :ditto:
    abstract def scope_selector=(value : ::K8S::Api::Core::V1::ScopeSelector)
    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    abstract def scopes : ::Array(String)?
    # :ditto:
    abstract def scopes! : ::Array(String)
    # :ditto:
    abstract def scopes? : ::Array(String)?
    # :ditto:
    abstract def scopes=(value : ::Array(String))
  end

  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  @[::K8S::Properties(
    hard: {key: "hard", accessor: "hard", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scope_selector: {key: "scopeSelector", accessor: "scope_selector", kind: "::K8S::Api::Core::V1::ScopeSelector", nilable: true, default: nil, read_only: false, description: "scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scopes: {key: "scopes", accessor: "scopes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ResourceQuotaSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ResourceQuotaSpec
    k8s_object_accessor("hard", hard : ::Hash(String, ::Int32 | ::String), true, false, "hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)")
    k8s_object_accessor("scopeSelector", scope_selector : ::K8S::Api::Core::V1::ScopeSelector, true, false, "scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.")
    k8s_object_accessor("scopes", scopes : ::Array(String), true, false, "A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.")

    def initialize(*, hard : ::Hash(String, ::Int32 | ::String)? = nil, scope_selector : ::K8S::Api::Core::V1::ScopeSelector? = nil, scopes : ::Array(String)? = nil)
      super()
      self.["hard"] = hard
      self.["scopeSelector"] = scope_selector
      self.["scopes"] = scopes
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "hard", accessor: "hard", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "scopeSelector", accessor: "scope_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ScopeSelector},
      {key: "scopes", accessor: "scopes", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
