# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./secret_reference"

::K8S::Kubernetes::Resource.define_object("CinderPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)"},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)"},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "secretRef", nilable: true, read_only: false, description: "Optional: points to a secret object containing parameters used to connect to OpenStack."},
    {name: "volume_id", kind: String, key: "volumeID", nilable: false, read_only: false, description: "volume id used to identify the volume in cinder More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)"},

  ]
)
