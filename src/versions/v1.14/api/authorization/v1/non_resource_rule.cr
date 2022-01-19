# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::NonResourceRule; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::NonResourceRule`.
  module Types::Api::Authorization::V1::NonResourceRule
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    abstract def non_resource_urls : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls! : ::Array(String)
    # :ditto:
    abstract def non_resource_urls? : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls=(value : ::Array(String)?)
    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    abstract def verbs : ::Array(String)
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
  end

  # NonResourceRule holds information that describes a rule for the non-resource
  @[::K8S::Properties(
    non_resource_urls: {key: "nonResourceURLs", accessor: "non_resource_urls", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all."},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all."},
  )]
  class Api::Authorization::V1::NonResourceRule < ::K8S::Types::Api::Authorization::V1::NonResourceRule::Instance
    include ::K8S::Types::Api::Authorization::V1::NonResourceRule
    include ::K8S::Kubernetes::Object

    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    def non_resource_urls : ::Array(String)?
      self.["nonResourceURLs"].as(::Array(String)?)
    end

    # :ditto:
    def non_resource_urls! : ::Array(String)
      self.["nonResourceURLs"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def non_resource_urls? : ::Array(String)?
      self.["nonResourceURLs"]?.as(::Array(String)?)
    end

    # :ditto:
    def non_resource_urls=(value : ::Array(String)?)
      self.["nonResourceURLs"] = value
    end

    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    def verbs : ::Array(String)
      self.["verbs"].as(::Array(String))
    end

    # :ditto:
    def verbs! : ::Array(String)
      self.["verbs"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def verbs? : ::Array(String)?
      self.["verbs"]?.as(::Array(String)?)
    end

    # :ditto:
    def verbs=(value : ::Array(String))
      self.["verbs"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nonResourceURLs", accessor: "non_resource_urls", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
