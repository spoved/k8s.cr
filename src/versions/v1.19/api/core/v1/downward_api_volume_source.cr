# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
  @[::K8S::Properties(
    default_mode: {type: Int32, nilable: true, key: "defaultMode", getter: false, setter: false},
    items: {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
  )]
  class Api::Core::V1::DownwardAPIVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @[::JSON::Field(key: "defaultMode", emit_null: false)]
    @[::YAML::Field(key: "defaultMode", emit_null: false)]
    property default_mode : Int32 | Nil

    # Items is a list of downward API volume file
    @[::JSON::Field(key: "items", emit_null: false)]
    @[::YAML::Field(key: "items", emit_null: false)]
    property items : Array(Api::Core::V1::DownwardAPIVolumeFile) | Nil

    def initialize(*, @default_mode : Int32 | Nil = nil, @items : Array | Nil = nil)
    end
  end
end
