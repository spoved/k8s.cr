# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AttachedVolume describes a volume attached to a node
  @[::K8S::Properties(
    device_path: {type: String, nilable: false, key: "devicePath", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Core::V1::AttachedVolume
    include ::JSON::Serializable
    include ::YAML::Serializable

    # DevicePath represents the device path where the volume should be available
    @[::JSON::Field(key: "devicePath", emit_null: true)]
    @[::YAML::Field(key: "devicePath", emit_null: true)]
    property device_path : String

    # Name of the attached volume
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @device_path : String, @name : String)
    end
  end
end
