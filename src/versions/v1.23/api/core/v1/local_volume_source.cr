# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("LocalVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a filesystem if unspecified."},
    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...)."},

  ]
)
