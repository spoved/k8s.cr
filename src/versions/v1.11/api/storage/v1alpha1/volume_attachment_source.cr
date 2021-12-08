# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  @[::K8S::Properties(
    persistent_volume_name: {type: String, nilable: true, key: "persistentVolumeName", getter: false, setter: false},
  )]
  class Api::Storage::V1alpha1::VolumeAttachmentSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of the persistent volume to attach.
    @[::JSON::Field(key: "persistentVolumeName", emit_null: false)]
    @[::YAML::Field(key: "persistentVolumeName", emit_null: false)]
    property persistent_volume_name : String | Nil

    def initialize(*, @persistent_volume_name : String | Nil = nil)
    end
  end
end
