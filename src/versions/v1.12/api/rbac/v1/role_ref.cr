# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # RoleRef contains information that points to the role being used
  @[::K8S::Properties(
    api_group: {type: String, nilable: false, key: "apiGroup", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Rbac::V1::RoleRef
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIGroup is the group for the resource being referenced
    @[::JSON::Field(key: "apiGroup", emit_null: true)]
    @[::YAML::Field(key: "apiGroup", emit_null: true)]
    property api_group : String

    # Kind is the type of resource being referenced
    @[::JSON::Field(key: "kind", emit_null: true)]
    @[::YAML::Field(key: "kind", emit_null: true)]
    property kind : String

    # Name is the name of resource being referenced
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @api_group : String, @kind : String, @name : String)
    end
  end
end
