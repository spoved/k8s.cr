# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VsphereVirtualDiskVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."},
    {name: "storage_policy_id", kind: String, key: "storagePolicyID", nilable: true, read_only: false, description: "storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."},
    {name: "storage_policy_name", kind: String, key: "storagePolicyName", nilable: true, read_only: false, description: "storagePolicyName is the storage Policy Based Management (SPBM) profile name."},
    {name: "volume_path", kind: String, key: "volumePath", nilable: false, read_only: false, description: "volumePath is the path that identifies vSphere volume vmdk"},

  ]
)
