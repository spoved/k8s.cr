# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  class Kubernetes::Apis::Authorization::V1beta1::ResourceAttributes
    # Group is the API Group of the Resource.  "*" means all.
    property group : String | Nil

    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    property name : String | Nil

    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    property namespace : String | Nil

    # Resource is one of the existing resource types.  "*" means all.
    property resource : String | Nil

    # Subresource is one of the existing resource types.  "" means none.
    property subresource : String | Nil

    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    property verb : String | Nil

    # Version is the API Version of the Resource.  "*" means all.
    property version : String | Nil

    ::YAML.mapping({
      group:       {type: String, nilable: true, key: "group", getter: false, setter: false},
      name:        {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:   {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      resource:    {type: String, nilable: true, key: "resource", getter: false, setter: false},
      subresource: {type: String, nilable: true, key: "subresource", getter: false, setter: false},
      verb:        {type: String, nilable: true, key: "verb", getter: false, setter: false},
      version:     {type: String, nilable: true, key: "version", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      group:       {type: String, nilable: true, key: "group", getter: false, setter: false},
      name:        {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:   {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      resource:    {type: String, nilable: true, key: "resource", getter: false, setter: false},
      subresource: {type: String, nilable: true, key: "subresource", getter: false, setter: false},
      verb:        {type: String, nilable: true, key: "verb", getter: false, setter: false},
      version:     {type: String, nilable: true, key: "version", getter: false, setter: false},
    }, true)

    def initialize(*, @group : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @resource : String | Nil = nil, @subresource : String | Nil = nil, @verb : String | Nil = nil, @version : String | Nil = nil)
    end
  end
end
