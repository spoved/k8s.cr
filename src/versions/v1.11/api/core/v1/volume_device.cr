# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # volumeDevice describes a mapping of a raw block device within a container.
  @[::K8S::Properties(
    device_path: {type: String, nilable: false, key: "devicePath", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Core::V1::VolumeDevice
    include ::JSON::Serializable
    include ::YAML::Serializable

    # devicePath is the path inside of the container that the device will be mapped to.
    @[::JSON::Field(key: "devicePath", emit_null: true)]
    @[::YAML::Field(key: "devicePath", emit_null: true)]
    property device_path : String

    # name must match the name of a persistentVolumeClaim in the pod
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @device_path : String, @name : String)
    end
  end
end
