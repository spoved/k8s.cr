# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./csi_node_driver"

::K8S::Kubernetes::Resource.define_object("CSINodeSpec",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "drivers", kind: ::Array(::K8S::Api::Storage::V1::CSINodeDriver), key: "drivers", nilable: true, read_only: false, description: "drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty."},

  ]
)
