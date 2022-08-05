# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("FCVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."},
    {name: "lun", kind: Int32, key: "lun", nilable: true, read_only: false, description: "lun is Optional: FC target lun number"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly is Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "target_wwns", kind: ::Array(String), key: "targetWWNs", nilable: true, read_only: false, description: "targetWWNs is Optional: FC target worldwide names (WWNs)"},
    {name: "wwids", kind: ::Array(String), key: "wwids", nilable: true, read_only: false, description: "wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."},

  ]
)
