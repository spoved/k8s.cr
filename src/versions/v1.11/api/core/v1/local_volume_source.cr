# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Local represents directly-attached storage with node affinity (Beta feature)
  @[::K8S::Properties(
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
  )]
  class Api::Core::V1::LocalVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled.
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    def initialize(*, @path : String)
    end
  end
end
