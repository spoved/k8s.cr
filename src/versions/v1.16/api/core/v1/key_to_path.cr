# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Maps a string key to a path within a volume.
  @[::K8S::Properties(
    key: {type: String, nilable: false, key: "key", getter: false, setter: false},
    mode: {type: Int32, nilable: true, key: "mode", getter: false, setter: false},
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
  )]
  class Api::Core::V1::KeyToPath
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The key to project.
    @[::JSON::Field(key: "key", emit_null: true)]
    @[::YAML::Field(key: "key", emit_null: true)]
    property key : String

    # Optional: mode bits to use on this file, must be a value between 0 and 0777. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "mode", emit_null: false)]
    @[::YAML::Field(key: "mode", emit_null: false)]
    property mode : Int32 | Nil

    # The relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    def initialize(*, @key : String, @path : String, @mode : Int32 | Nil = nil)
    end
  end
end
