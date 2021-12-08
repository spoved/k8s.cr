# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
  @[::K8S::Properties(
    group: {type: String, nilable: true, key: "group", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    resource: {type: String, nilable: true, key: "resource", getter: false, setter: false},
    subresource: {type: String, nilable: true, key: "subresource", getter: false, setter: false},
    verb: {type: String, nilable: true, key: "verb", getter: false, setter: false},
    version: {type: String, nilable: true, key: "version", getter: false, setter: false},
  )]
  class Api::Authorization::V1::ResourceAttributes
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Group is the API Group of the Resource.  "*" means all.
    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : String | Nil

    # Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces "" (empty) is defaulted for LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    @[::JSON::Field(key: "namespace", emit_null: false)]
    @[::YAML::Field(key: "namespace", emit_null: false)]
    property namespace : String | Nil

    # Resource is one of the existing resource types.  "*" means all.
    @[::JSON::Field(key: "resource", emit_null: false)]
    @[::YAML::Field(key: "resource", emit_null: false)]
    property resource : String | Nil

    # Subresource is one of the existing resource types.  "" means none.
    @[::JSON::Field(key: "subresource", emit_null: false)]
    @[::YAML::Field(key: "subresource", emit_null: false)]
    property subresource : String | Nil

    # Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
    @[::JSON::Field(key: "verb", emit_null: false)]
    @[::YAML::Field(key: "verb", emit_null: false)]
    property verb : String | Nil

    # Version is the API Version of the Resource.  "*" means all.
    @[::JSON::Field(key: "version", emit_null: false)]
    @[::YAML::Field(key: "version", emit_null: false)]
    property version : String | Nil

    def initialize(*, @group : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @resource : String | Nil = nil, @subresource : String | Nil = nil, @verb : String | Nil = nil, @version : String | Nil = nil)
    end
  end
end
