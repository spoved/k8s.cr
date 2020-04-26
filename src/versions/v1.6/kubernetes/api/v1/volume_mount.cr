# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeMount describes a mounting of a Volume within a container.
  class Kubernetes::Api::V1::VolumeMount
    # Path within the container at which the volume should be mounted.  Must not contain ':'.
    property mount_path : String

    # This must match the Name of a Volume.
    property name : String

    # Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    property read_only : Bool | Nil

    # Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
    property sub_path : String | Nil

    ::YAML.mapping({
      mount_path: {type: String, nilable: false, key: "mountPath", getter: false, setter: false},
      name:       {type: String, nilable: false, key: "name", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      sub_path:   {type: String, nilable: true, key: "subPath", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      mount_path: {type: String, nilable: false, key: "mountPath", getter: false, setter: false},
      name:       {type: String, nilable: false, key: "name", getter: false, setter: false},
      read_only:  {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
      sub_path:   {type: String, nilable: true, key: "subPath", getter: false, setter: false},
    }, true)

    def initialize(*, @mount_path : String, @name : String, @read_only : Bool | Nil = nil, @sub_path : String | Nil = nil)
    end
  end
end
