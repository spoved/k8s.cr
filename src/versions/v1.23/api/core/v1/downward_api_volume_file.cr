# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DownwardAPIVolumeFile represents information to create the file containing the pod field
  @[::K8S::Properties(
    field_ref: {type: Api::Core::V1::ObjectFieldSelector, nilable: true, key: "fieldRef", getter: false, setter: false},
    mode: {type: Int32, nilable: true, key: "mode", getter: false, setter: false},
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    resource_field_ref: {type: Api::Core::V1::ResourceFieldSelector, nilable: true, key: "resourceFieldRef", getter: false, setter: false},
  )]
  class Api::Core::V1::DownwardAPIVolumeFile
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
    @[::JSON::Field(key: "fieldRef", emit_null: false)]
    @[::YAML::Field(key: "fieldRef", emit_null: false)]
    property field_ref : Api::Core::V1::ObjectFieldSelector | Nil

    # Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "mode", emit_null: false)]
    @[::YAML::Field(key: "mode", emit_null: false)]
    property mode : Int32 | Nil

    # Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
    @[::JSON::Field(key: "resourceFieldRef", emit_null: false)]
    @[::YAML::Field(key: "resourceFieldRef", emit_null: false)]
    property resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil

    def initialize(*, @path : String, @field_ref : Api::Core::V1::ObjectFieldSelector | Nil = nil, @mode : Int32 | Nil = nil, @resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil = nil)
    end
  end
end
