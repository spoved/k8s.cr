# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ResourceHandle",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "data", kind: String, key: "data", nilable: true, read_only: false, description: "Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.\n\nThe maximum size of this field is 16KiB. This may get increased in the future, but not reduced."},
    {name: "driver_name", kind: String, key: "driverName", nilable: true, read_only: false, description: "DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in."},

  ]
)
