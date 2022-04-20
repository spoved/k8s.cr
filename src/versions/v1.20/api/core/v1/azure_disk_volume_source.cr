# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("AzureDiskVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "caching_mode", kind: String, key: "cachingMode", nilable: true, read_only: false, description: "Host Caching mode: None, Read Only, Read Write."},
    {name: "disk_name", kind: String, key: "diskName", nilable: false, read_only: false, description: "The Name of the data disk in the blob storage"},
    {name: "disk_uri", kind: String, key: "diskURI", nilable: false, read_only: false, description: "The URI the data disk in the blob storage"},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."},
    {name: "kind", kind: String, key: "kind", nilable: true, read_only: false, description: "Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},

  ]
)
