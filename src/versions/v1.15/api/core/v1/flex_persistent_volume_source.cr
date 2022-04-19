# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./secret_reference"

::K8S::Kubernetes::Resource.define_object("FlexPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "driver", kind: String, key: "driver", nilable: false, read_only: false, description: "Driver is the name of the driver to use for this volume."},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."},
    {name: "options", kind: ::Hash(String, String), key: "options", nilable: true, read_only: false, description: "Optional: Extra command options if any."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "secretRef", nilable: true, read_only: false, description: "Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."},

  ]
)
