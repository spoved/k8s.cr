# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./object_reference"

::K8S::Kubernetes::Resource.define_object("StorageOSPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::ObjectReference, key: "secretRef", nilable: true, read_only: false, description: "secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."},
    {name: "volume_name", kind: String, key: "volumeName", nilable: true, read_only: false, description: "volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."},
    {name: "volume_namespace", kind: String, key: "volumeNamespace", nilable: true, read_only: false, description: "volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."},

  ]
)
