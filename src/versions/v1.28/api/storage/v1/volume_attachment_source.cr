# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/persistent_volume_spec"

::K8S::Kubernetes::Resource.define_object("VolumeAttachmentSource",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "inline_volume_spec", kind: ::K8S::Api::Core::V1::PersistentVolumeSpec, key: "inlineVolumeSpec", nilable: true, read_only: false, description: "inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is beta-level and is only honored by servers that enabled the CSIMigration feature."},
    {name: "persistent_volume_name", kind: String, key: "persistentVolumeName", nilable: true, read_only: false, description: "persistentVolumeName represents the name of the persistent volume to attach."},

  ]
)
