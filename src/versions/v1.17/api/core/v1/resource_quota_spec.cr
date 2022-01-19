# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceQuotaSpec; end

require "./scope_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceQuotaSpec`.
  module Types::Api::Core::V1::ResourceQuotaSpec
    alias ValueType = ::Hash(String, ::Int32 | ::String) | ::K8S::Api::Core::V1::ScopeSelector | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # hard is the set of desired hard limits for each named resource. More info: [[https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)](https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/))
    abstract def hard : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def hard? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard=(value : ::Hash(String, ::Int32 | ::String)?)
    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    abstract def scope_selector : ::K8S::Api::Core::V1::ScopeSelector?
    # :ditto:
    abstract def scope_selector! : ::K8S::Api::Core::V1::ScopeSelector
    # :ditto:
    abstract def scope_selector? : ::K8S::Api::Core::V1::ScopeSelector?
    # :ditto:
    abstract def scope_selector=(value : ::K8S::Api::Core::V1::ScopeSelector?)
    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    abstract def scopes : ::Array(String)?
    # :ditto:
    abstract def scopes! : ::Array(String)
    # :ditto:
    abstract def scopes? : ::Array(String)?
    # :ditto:
    abstract def scopes=(value : ::Array(String)?)
  end

  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  @[::K8S::Properties(
    hard: {key: "hard", accessor: "hard", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "hard is the set of desired hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)"},
    scope_selector: {key: "scopeSelector", accessor: "scope_selector", kind: "::K8S::Api::Core::V1::ScopeSelector", nilable: true, default: nil, read_only: false, description: "scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched."},
    scopes: {key: "scopes", accessor: "scopes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects."},
  )]
  class Api::Core::V1::ResourceQuotaSpec < ::K8S::Types::Api::Core::V1::ResourceQuotaSpec::Instance
    include ::K8S::Types::Api::Core::V1::ResourceQuotaSpec
    include ::K8S::Kubernetes::Object

    # hard is the set of desired hard limits for each named resource. More info: [[https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)](https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/))
    def hard : ::Hash(String, ::Int32 | ::String)?
      self.["hard"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def hard! : ::Hash(String, ::Int32 | ::String)
      self.["hard"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def hard? : ::Hash(String, ::Int32 | ::String)?
      self.["hard"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def hard=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["hard"] = value
    end

    # scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
    def scope_selector : ::K8S::Api::Core::V1::ScopeSelector?
      self.["scopeSelector"].as(::K8S::Api::Core::V1::ScopeSelector?)
    end

    # :ditto:
    def scope_selector! : ::K8S::Api::Core::V1::ScopeSelector
      self.["scopeSelector"].as(::K8S::Api::Core::V1::ScopeSelector?).not_nil!
    end

    # :ditto:
    def scope_selector? : ::K8S::Api::Core::V1::ScopeSelector?
      self.["scopeSelector"]?.as(::K8S::Api::Core::V1::ScopeSelector?)
    end

    # :ditto:
    def scope_selector=(value : ::K8S::Api::Core::V1::ScopeSelector?)
      self.["scopeSelector"] = value
    end

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    def scopes : ::Array(String)?
      self.["scopes"].as(::Array(String)?)
    end

    # :ditto:
    def scopes! : ::Array(String)
      self.["scopes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def scopes? : ::Array(String)?
      self.["scopes"]?.as(::Array(String)?)
    end

    # :ditto:
    def scopes=(value : ::Array(String)?)
      self.["scopes"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hard", accessor: "hard", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "scopeSelector", accessor: "scope_selector", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ScopeSelector },
        { key: "scopes", accessor: "scopes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
