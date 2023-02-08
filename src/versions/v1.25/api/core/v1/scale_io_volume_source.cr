# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./local_object_reference"

::K8S::Kubernetes::Resource.define_object("ScaleIOVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."},
    {name: "gateway", kind: String, key: "gateway", nilable: false, read_only: false, description: "gateway is the host address of the ScaleIO API Gateway."},
    {name: "protection_domain", kind: String, key: "protectionDomain", nilable: true, read_only: false, description: "protectionDomain is the name of the ScaleIO Protection Domain for the configured storage."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::LocalObjectReference, key: "secretRef", nilable: false, read_only: false, description: "secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail."},
    {name: "ssl_enabled", kind: ::Bool, key: "sslEnabled", nilable: true, read_only: false, description: "sslEnabled Flag [enable/disable SSL communication with Gateway, default false](enable/disable SSL communication with Gateway, default false)"},
    {name: "storage_mode", kind: String, key: "storageMode", nilable: true, read_only: false, description: "storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."},
    {name: "storage_pool", kind: String, key: "storagePool", nilable: true, read_only: false, description: "storagePool is the ScaleIO Storage Pool associated with the protection domain."},
    {name: "system", kind: String, key: "system", nilable: false, read_only: false, description: "system is the name of the storage system as configured in ScaleIO."},
    {name: "volume_name", kind: String, key: "volumeName", nilable: true, read_only: false, description: "volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source."},

  ]
)
