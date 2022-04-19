# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("VolumeNodeResources",
  namespace: "::K8S::Api::Storage::V1beta1",
  properties: [

    {name: "count", kind: Int32, key: "count", nilable: true, read_only: false, description: "Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded."},

  ]
)
