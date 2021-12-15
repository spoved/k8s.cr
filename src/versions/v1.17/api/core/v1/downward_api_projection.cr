# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  @[::K8S::Properties(
    items: {type: Array(Api::Core::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
  )]
  class Api::Core::V1::DownwardAPIProjection
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Items is a list of DownwardAPIVolume file
    @[::JSON::Field(key: "items", emit_null: false)]
    @[::YAML::Field(key: "items", emit_null: false)]
    property items : Array(Api::Core::V1::DownwardAPIVolumeFile) | Nil

    def initialize(*, @items : Array | Nil = nil)
    end
  end
end
