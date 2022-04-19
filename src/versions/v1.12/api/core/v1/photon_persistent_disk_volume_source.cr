# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PhotonPersistentDiskVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."},
    {name: "pd_id", kind: String, key: "pdID", nilable: false, read_only: false, description: "ID that identifies Photon Controller persistent disk"},

  ]
)
