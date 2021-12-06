# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # BoundObjectReference is a reference to an object that a token is bound to.
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
  )]
  class Api::Authentication::V1::BoundObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent.
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # Name of the referent.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # UID of the referent.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
