# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./local_object_reference"

::K8S::Kubernetes::Resource.define_object("CSIVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "driver", kind: String, key: "driver", nilable: false, read_only: false, description: "driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster."},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."},
    {name: "node_publish_secret_ref", kind: ::K8S::Api::Core::V1::LocalObjectReference, key: "nodePublishSecretRef", nilable: true, read_only: false, description: "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly specifies a read-only configuration for the volume. Defaults to false [(read/write).]((read/write).)"},
    {name: "volume_attributes", kind: ::Hash(String, String), key: "volumeAttributes", nilable: true, read_only: false, description: "volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."},

  ]
)
