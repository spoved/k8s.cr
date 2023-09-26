# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/node_selector"
require "./resource_handle"

::K8S::Kubernetes::Resource.define_object("AllocationResult",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "available_on_nodes", kind: ::K8S::Api::Core::V1::NodeSelector, key: "availableOnNodes", nilable: true, read_only: false, description: "This field will get set by the resource driver after it has allocated the resource to inform the scheduler where it can schedule Pods using the ResourceClaim.\n\nSetting this field is optional. If null, the resource is available everywhere."},
    {name: "resource_handles", kind: ::Array(::K8S::Api::Resource::V1alpha2::ResourceHandle), key: "resourceHandles", nilable: true, read_only: false, description: "ResourceHandles contain the state associated with an allocation that should be maintained throughout the lifetime of a claim. Each ResourceHandle contains data that should be passed to a specific kubelet plugin once it lands on a node. This data is returned by the driver after a successful allocation and is opaque to Kubernetes. Driver documentation may explain to users how to interpret this data if needed.\n\nSetting this field is optional. It has a maximum size of 32 entries. If null (or empty), it is assumed this allocation will be processed by a single kubelet plugin with no ResourceHandle data attached. The name of the kubelet plugin invoked will match the DriverName set in the ResourceClaimStatus this AllocationResult is embedded in."},
    {name: "shareable", kind: ::Bool, key: "shareable", nilable: true, read_only: false, description: "Shareable determines whether the resource supports more than one consumer at a time."},

  ]
)
