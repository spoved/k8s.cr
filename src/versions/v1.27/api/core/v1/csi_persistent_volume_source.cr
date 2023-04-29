# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./secret_reference"

::K8S::Kubernetes::Resource.define_object("CSIPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "controller_expand_secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "controllerExpandSecretRef", nilable: true, read_only: false, description: "controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed."},
    {name: "controller_publish_secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "controllerPublishSecretRef", nilable: true, read_only: false, description: "controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed."},
    {name: "driver", kind: String, key: "driver", nilable: false, read_only: false, description: "driver is the name of the driver to use for this volume. Required."},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\"."},
    {name: "node_expand_secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "nodeExpandSecretRef", nilable: true, read_only: false, description: "nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This is a beta field which is enabled default by CSINodeExpandSecret feature gate. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed."},
    {name: "node_publish_secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "nodePublishSecretRef", nilable: true, read_only: false, description: "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed."},
    {name: "node_stage_secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "nodeStageSecretRef", nilable: true, read_only: false, description: "nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false [(read/write).]((read/write).)"},
    {name: "volume_attributes", kind: ::Hash(String, String), key: "volumeAttributes", nilable: true, read_only: false, description: "volumeAttributes of the volume to publish."},
    {name: "volume_handle", kind: String, key: "volumeHandle", nilable: false, read_only: false, description: "volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required."},

  ]
)
