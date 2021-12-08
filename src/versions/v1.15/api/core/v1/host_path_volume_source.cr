# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
    type: {type: String, nilable: true, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::HostPathVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    # Type for HostPath Volume Defaults to "" More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    @[::JSON::Field(key: "type", emit_null: false)]
    @[::YAML::Field(key: "type", emit_null: false)]
    property type : String | Nil

    def initialize(*, @path : String, @type : String | Nil = nil)
    end
  end
end
