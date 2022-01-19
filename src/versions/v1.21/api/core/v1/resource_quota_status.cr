# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceQuotaStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceQuotaStatus`.
  module Types::Api::Core::V1::ResourceQuotaStatus
    alias ValueType = ::Hash(String, ::Int32 | ::String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Hard is the set of enforced hard limits for each named resource. More info: [[https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)](https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/))
    abstract def hard : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def hard? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def hard=(value : ::Hash(String, ::Int32 | ::String)?)
    # Used is the current observed total usage of the resource in the namespace.
    abstract def used : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def used! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def used? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def used=(value : ::Hash(String, ::Int32 | ::String)?)
  end

  # ResourceQuotaStatus defines the enforced hard limits and observed use.
  @[::K8S::Properties(
    hard: {key: "hard", accessor: "hard", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Hard is the set of enforced hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)"},
    used: {key: "used", accessor: "used", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Used is the current observed total usage of the resource in the namespace."},
  )]
  class Api::Core::V1::ResourceQuotaStatus < ::K8S::Types::Api::Core::V1::ResourceQuotaStatus::Instance
    include ::K8S::Types::Api::Core::V1::ResourceQuotaStatus
    include ::K8S::Kubernetes::Object

    # Hard is the set of enforced hard limits for each named resource. More info: [[https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)](https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/))
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

    # Used is the current observed total usage of the resource in the namespace.
    def used : ::Hash(String, ::Int32 | ::String)?
      self.["used"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def used! : ::Hash(String, ::Int32 | ::String)
      self.["used"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def used? : ::Hash(String, ::Int32 | ::String)?
      self.["used"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def used=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["used"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hard", accessor: "hard", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "used", accessor: "used", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
      ])
end
  end
end
