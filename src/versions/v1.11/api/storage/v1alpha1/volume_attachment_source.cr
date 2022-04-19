# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VolumeAttachmentSource",
  namespace: "::K8S::Api::Storage::V1alpha1",
  properties: [

    {name: "persistent_volume_name", kind: String, key: "persistentVolumeName", nilable: true, read_only: false, description: "Name of the persistent volume to attach."},

  ]
)
