# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # UserInfo holds the information about the user needed to implement the user.Info interface.
  @[::K8S::Properties(
    extra: {type: Hash(String, Array(String)), nilable: true, key: "extra", getter: false, setter: false},
    groups: {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
    username: {type: String, nilable: true, key: "username", getter: false, setter: false},
  )]
  class Api::Authentication::V1::UserInfo
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Any additional information provided by the authenticator.
    @[::JSON::Field(key: "extra", emit_null: false)]
    @[::YAML::Field(key: "extra", emit_null: false)]
    property extra : Hash(String, Array(String)) | Nil

    # The names of groups this user is a part of.
    @[::JSON::Field(key: "groups", emit_null: false)]
    @[::YAML::Field(key: "groups", emit_null: false)]
    property groups : Array(String) | Nil

    # A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    # The name that uniquely identifies this user among all active users.
    @[::JSON::Field(key: "username", emit_null: false)]
    @[::YAML::Field(key: "username", emit_null: false)]
    property username : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @username : String | Nil = nil)
    end
  end
end
