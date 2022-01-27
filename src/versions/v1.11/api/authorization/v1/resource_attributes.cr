# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::ResourceAttributes; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::ResourceAttributes`.
  module Types::Api::Authorization::V1::ResourceAttributes
    # Group is the API Group of the Resource.  "*" means all.
    abstract def group : String?
    # :ditto:
    abstract def group! : String
    # :ditto:
    abstract def group? : String?
    # :ditto:
    abstract def group=(value : String)
    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
    # Resource is one of the existing resource types.  "*" means all.
    abstract def resource : String?
    # :ditto:
    abstract def resource! : String
    # :ditto:
    abstract def resource? : String?
    # :ditto:
    abstract def resource=(value : String)
    # Subresource is one of the existing resource types.  "" means none.
    abstract def subresource : String?
    # :ditto:
    abstract def subresource! : String
    # :ditto:
    abstract def subresource? : String?
    # :ditto:
    abstract def subresource=(value : String)
    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    abstract def verb : String?
    # :ditto:
    abstract def verb! : String
    # :ditto:
    abstract def verb? : String?
    # :ditto:
    abstract def verb=(value : String)
    # Version is the API Version of the Resource.  "*" means all.
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String)
  end

  # ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  @[::K8S::Properties(
    group: {key: "group", accessor: "group", kind: "String", nilable: true, default: nil, read_only: false, description: "Group is the API Group of the Resource.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource: {key: "resource", accessor: "resource", kind: "String", nilable: true, default: nil, read_only: false, description: "Resource is one of the existing resource types.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    subresource: {key: "subresource", accessor: "subresource", kind: "String", nilable: true, default: nil, read_only: false, description: "Subresource is one of the existing resource types.  \"\" means none.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    verb: {key: "verb", accessor: "verb", kind: "String", nilable: true, default: nil, read_only: false, description: "Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    version: {key: "version", accessor: "version", kind: "String", nilable: true, default: nil, read_only: false, description: "Version is the API Version of the Resource.  \"*\" means all.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::ResourceAttributes < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::ResourceAttributes
    k8s_object_accessor("group", group : String, true, false, "Group is the API Group of the Resource.  \"*\" means all.")
    k8s_object_accessor("name", name : String, true, false, "Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.")
    k8s_object_accessor("namespace", namespace : String, true, false, "Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview")
    k8s_object_accessor("resource", resource : String, true, false, "Resource is one of the existing resource types.  \"*\" means all.")
    k8s_object_accessor("subresource", subresource : String, true, false, "Subresource is one of the existing resource types.  \"\" means none.")
    k8s_object_accessor("verb", verb : String, true, false, "Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.")
    k8s_object_accessor("version", version : String, true, false, "Version is the API Version of the Resource.  \"*\" means all.")

    def initialize(*, group : String? = nil, name : String? = nil, namespace : String? = nil, resource : String? = nil, subresource : String? = nil, verb : String? = nil, version : String? = nil)
      super()
      self.["group"] = group
      self.["name"] = name
      self.["namespace"] = namespace
      self.["resource"] = resource
      self.["subresource"] = subresource
      self.["verb"] = verb
      self.["version"] = version
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String},
      {key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: String},
      {key: "subresource", accessor: "subresource", nilable: true, read_only: false, default: nil, kind: String},
      {key: "verb", accessor: "verb", nilable: true, read_only: false, default: nil, kind: String},
      {key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
