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
    include ::YAML::Serializable

    # APIGroup is the group for the resource being referenced
    @[::JSON::Field(key: "apiGroup")]
    @[::YAML::Field(key: "apiGroup")]
    property api_group : String

    # Kind is the type of resource being referenced
    property kind : String

    # Name is the name of resource being referenced
    property name : String

    def initialize(*, @api_group : String, @kind : String, @name : String)
    end
  end
end
