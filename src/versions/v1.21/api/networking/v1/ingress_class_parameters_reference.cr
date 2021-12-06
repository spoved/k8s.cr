# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IngressClassParametersReference identifies an API object. This can be used to specify a cluster or namespace-scoped resource.
  @[::K8S::Properties(
    api_group: {type: String, nilable: true, key: "apiGroup", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    scope: {type: String, nilable: true, key: "scope", getter: false, setter: false},
  )]
  class Api::Networking::V1::IngressClassParametersReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    @[::JSON::Field(key: "apiGroup", emit_null: false)]
    @[::YAML::Field(key: "apiGroup", emit_null: false)]
    property api_group : String | Nil

    # Kind is the type of resource being referenced.
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    # Name is the name of resource being referenced.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Namespace is the namespace of the resource being referenced. This field is required when scope is set to "Namespace" and must be unset when scope is set to "Cluster".
    @[::JSON::Field(key: "namespace", emit_null: false)]
    @[::YAML::Field(key: "namespace", emit_null: false)]
    property namespace : String | Nil

    # Scope represents if this refers to a cluster or namespace scoped resource. This may be set to "Cluster" (default) or "Namespace". Field can be enabled with IngressClassNamespacedParams feature gate.
    @[::JSON::Field(key: "scope", emit_null: false)]
    @[::YAML::Field(key: "scope", emit_null: false)]
    property scope : String | Nil

    def initialize(*, @kind : String, @name : String, @api_group : String | Nil = nil, @namespace : String | Nil = nil, @scope : String | Nil = nil)
    end
  end
end
