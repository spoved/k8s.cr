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
    abstract def group=(value : String?)
    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
    # Resource is one of the existing resource types.  "*" means all.
    abstract def resource : String?
    # :ditto:
    abstract def resource! : String
    # :ditto:
    abstract def resource? : String?
    # :ditto:
    abstract def resource=(value : String?)
    # Subresource is one of the existing resource types.  "" means none.
    abstract def subresource : String?
    # :ditto:
    abstract def subresource! : String
    # :ditto:
    abstract def subresource? : String?
    # :ditto:
    abstract def subresource=(value : String?)
    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    abstract def verb : String?
    # :ditto:
    abstract def verb! : String
    # :ditto:
    abstract def verb? : String?
    # :ditto:
    abstract def verb=(value : String?)
    # Version is the API Version of the Resource.  "*" means all.
    abstract def version : String?
    # :ditto:
    abstract def version! : String
    # :ditto:
    abstract def version? : String?
    # :ditto:
    abstract def version=(value : String?)
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

    # Group is the API Group of the Resource.  "*" means all.
    def group : String?
      self.["group"].as(String?)
    end

    # :ditto:
    def group! : String
      self.["group"].as(String?).not_nil!
    end

    # :ditto:
    def group? : String?
      self.["group"]?.as(String?)
    end

    # :ditto:
    def group=(value : String?)
      self.["group"] = value
    end

    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    # Resource is one of the existing resource types.  "*" means all.
    def resource : String?
      self.["resource"].as(String?)
    end

    # :ditto:
    def resource! : String
      self.["resource"].as(String?).not_nil!
    end

    # :ditto:
    def resource? : String?
      self.["resource"]?.as(String?)
    end

    # :ditto:
    def resource=(value : String?)
      self.["resource"] = value
    end

    # Subresource is one of the existing resource types.  "" means none.
    def subresource : String?
      self.["subresource"].as(String?)
    end

    # :ditto:
    def subresource! : String
      self.["subresource"].as(String?).not_nil!
    end

    # :ditto:
    def subresource? : String?
      self.["subresource"]?.as(String?)
    end

    # :ditto:
    def subresource=(value : String?)
      self.["subresource"] = value
    end

    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    def verb : String?
      self.["verb"].as(String?)
    end

    # :ditto:
    def verb! : String
      self.["verb"].as(String?).not_nil!
    end

    # :ditto:
    def verb? : String?
      self.["verb"]?.as(String?)
    end

    # :ditto:
    def verb=(value : String?)
      self.["verb"] = value
    end

    # Version is the API Version of the Resource.  "*" means all.
    def version : String?
      self.["version"].as(String?)
    end

    # :ditto:
    def version! : String
      self.["version"].as(String?).not_nil!
    end

    # :ditto:
    def version? : String?
      self.["version"]?.as(String?)
    end

    # :ditto:
    def version=(value : String?)
      self.["version"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "group", accessor: "group", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
        { key: "resource", accessor: "resource", nilable: true, read_only: false, default: nil, kind: String },
        { key: "subresource", accessor: "subresource", nilable: true, read_only: false, default: nil, kind: String },
        { key: "verb", accessor: "verb", nilable: true, read_only: false, default: nil, kind: String },
        { key: "version", accessor: "version", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
