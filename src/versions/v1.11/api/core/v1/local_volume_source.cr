# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("LocalVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "path", kind: String, key: "path", nilable: false, read_only: false, description: "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled."},

  ]
)
