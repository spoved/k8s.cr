# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    group: {type: String, nilable: true, key: "group", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    registry: {type: String, nilable: false, key: "registry", getter: false, setter: false},
    user: {type: String, nilable: true, key: "user", getter: false, setter: false},
    volume: {type: String, nilable: false, key: "volume", getter: false, setter: false},
  )]
  class Api::Core::V1::QuobyteVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Group to map volume access to Default is no group
    @[::JSON::Field(key: "group", emit_null: false)]
    @[::YAML::Field(key: "group", emit_null: false)]
    property group : String | Nil

    # ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes
    @[::JSON::Field(key: "registry", emit_null: true)]
    @[::YAML::Field(key: "registry", emit_null: true)]
    property registry : String

    # User to map volume access to Defaults to serivceaccount user
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : String | Nil

    # Volume is a string that references an already created Quobyte volume by name.
    @[::JSON::Field(key: "volume", emit_null: true)]
    @[::YAML::Field(key: "volume", emit_null: true)]
    property volume : String

    def initialize(*, @registry : String, @volume : String, @group : String | Nil = nil, @read_only : Bool | Nil = nil, @user : String | Nil = nil)
    end
  end
end
