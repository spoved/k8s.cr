# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a projected volume source
  @[::K8S::Properties(
    default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
    sources: {type: Array(Api::Core::V1::VolumeProjection), nilable: false, key: "sources", getter: false, setter: false},
  )]
  class Api::Core::V1::ProjectedVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Mode bits to use on created files by default. Must be a value between 0 and 0777. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "defaultMode", emit_null: false)]
    @[::YAML::Field(key: "defaultMode", emit_null: false)]
    property default_mode : Int32 | Nil

    # list of volume projections
    @[::JSON::Field(key: "sources", emit_null: true)]
    @[::YAML::Field(key: "sources", emit_null: true)]
    property sources : Array(Api::Core::V1::VolumeProjection)

    def initialize(*, @sources : Array, @default_mode : Int32 | Nil = nil)
    end
  end
end