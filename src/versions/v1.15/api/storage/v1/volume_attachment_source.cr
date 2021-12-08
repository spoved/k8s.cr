# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  @[::K8S::Properties(
    inline_volume_spec: {type: Api::Core::V1::PersistentVolumeSpec, nilable: true, key: "inlineVolumeSpec", getter: false, setter: false},
    persistent_volume_name: {type: String, nilable: true, key: "persistentVolumeName", getter: false, setter: false},
  )]
  class Api::Storage::V1::VolumeAttachmentSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
    @[::JSON::Field(key: "inlineVolumeSpec", emit_null: false)]
    @[::YAML::Field(key: "inlineVolumeSpec", emit_null: false)]
    property inline_volume_spec : Api::Core::V1::PersistentVolumeSpec | Nil

    # Name of the persistent volume to attach.
    @[::JSON::Field(key: "persistentVolumeName", emit_null: false)]
    @[::YAML::Field(key: "persistentVolumeName", emit_null: false)]
    property persistent_volume_name : String | Nil

    def initialize(*, @inline_volume_spec : Api::Core::V1::PersistentVolumeSpec | Nil = nil, @persistent_volume_name : String | Nil = nil)
    end
  end
end
