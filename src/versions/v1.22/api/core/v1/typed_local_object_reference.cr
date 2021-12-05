# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
  @[::K8S::Properties(
    api_group: {type: String, nilable: true, key: "apiGroup", getter: false, setter: false},
    kind: {type: String, nilable: false, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Core::V1::TypedLocalObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    @[::JSON::Field(key: "apiGroup")]
    @[::YAML::Field(key: "apiGroup")]
    property api_group : String | Nil

    # Kind is the type of resource being referenced
    property kind : String

    # Name is the name of resource being referenced
    property name : String

    def initialize(*, @kind : String, @name : String, @api_group : String | Nil = nil)
    end
  end
end
