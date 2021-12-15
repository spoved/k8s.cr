# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SELinuxOptions are the labels to be applied to the container
  @[::K8S::Properties(
    level: {type: String, nilable: true, key: "level", getter: false, setter: false},
    role: {type: String, nilable: true, key: "role", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
    user: {type: String, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Core::V1::SELinuxOptions
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Level is SELinux level label that applies to the container.
    @[::JSON::Field(key: "level", emit_null: false)]
    @[::YAML::Field(key: "level", emit_null: false)]
    property level : String | Nil

    # Role is a SELinux role label that applies to the container.
    @[::JSON::Field(key: "role", emit_null: false)]
    @[::YAML::Field(key: "role", emit_null: false)]
    property role : String | Nil

    # Type is a SELinux type label that applies to the container.
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    # User is a SELinux user label that applies to the container.
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : String | Nil

    def initialize(*, @level : String | Nil = nil, @role : String | Nil = nil, @type : String | Nil = nil, @user : String | Nil = nil)
    end
  end
end
