# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./resource_class_parameters_reference"
require "../../core/v1/node_selector"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha2", "ResourceClass",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "driver_name", kind: String, key: "driverName", nilable: false, read_only: false, description: "DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.\n\nResource drivers have a unique name in forward domain order (acme.example.com)."},
    {name: "parameters_ref", kind: ::K8S::Api::Resource::V1alpha2::ResourceClassParametersReference, key: "parametersRef", nilable: true, read_only: false, description: "ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec."},
    {name: "suitable_nodes", kind: ::K8S::Api::Core::V1::NodeSelector, key: "suitableNodes", nilable: true, read_only: false, description: "Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.\n\nSetting this field is optional. If null, all nodes are candidates."},

  ],
  description: "ResourceClass is used by administrators to influence how resources are allocated.\n\nThis is an alpha type and requires enabling the DynamicResourceAllocation feature gate.",
  versions: [{group: "resource.k8s.io", kind: "ResourceClass", version: "v1alpha2"}],
)
