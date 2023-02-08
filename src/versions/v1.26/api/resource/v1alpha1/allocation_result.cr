# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../core/v1/node_selector"

::K8S::Kubernetes::Resource.define_object("AllocationResult",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "available_on_nodes", kind: ::K8S::Api::Core::V1::NodeSelector, key: "availableOnNodes", nilable: true, read_only: false, description: "This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.\n\nSetting this field is optional. If null, the resource is available everywhere."},
    {name: "resource_handle", kind: String, key: "resourceHandle", nilable: true, read_only: false, description: "ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.\n\nThe maximum size of this field is 16KiB. This may get increased in the future, but not reduced."},
    {name: "shareable", kind: ::Bool, key: "shareable", nilable: true, read_only: false, description: "Shareable determines whether the resource supports more than one consumer at a time."},

  ]
)
