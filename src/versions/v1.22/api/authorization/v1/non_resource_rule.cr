# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::NonResourceRule; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::NonResourceRule`.
  module Types::Api::Authorization::V1::NonResourceRule
    # NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
    abstract def non_resource_urls : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls! : ::Array(String)
    # :ditto:
    abstract def non_resource_urls? : ::Array(String)?
    # :ditto:
    abstract def non_resource_urls=(value : ::Array(String))
    # Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
    abstract def verbs : ::Array(String)?
    # :ditto:
    abstract def verbs! : ::Array(String)
    # :ditto:
    abstract def verbs? : ::Array(String)?
    # :ditto:
    abstract def verbs=(value : ::Array(String))
  end

  # NonResourceRule holds information that describes a rule for the non-resource
  @[::K8S::Properties(
    non_resource_urls: {key: "nonResourceURLs", accessor: "non_resource_urls", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verbs: {key: "verbs", accessor: "verbs", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::NonResourceRule < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::NonResourceRule
    k8s_object_accessor("nonResourceURLs", non_resource_urls : ::Array(String), true, false, "NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.")
    k8s_object_accessor("verbs", verbs : ::Array(String), false, false, "Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.")

    def initialize(*, non_resource_urls : ::Array(String)? = nil, verbs : ::Array(String)? = nil)
      super()
      self.["nonResourceURLs"] = non_resource_urls
      self.["verbs"] = verbs
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "nonResourceURLs", accessor: "non_resource_urls", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "verbs", accessor: "verbs", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
