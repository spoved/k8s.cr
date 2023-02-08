# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./allocation_result"
require "./resource_claim_consumer_reference"

::K8S::Kubernetes::Resource.define_object("ResourceClaimStatus",
  namespace: "::K8S::Api::Resource::V1alpha1",
  properties: [

    {name: "allocation", kind: ::K8S::Api::Resource::V1alpha1::AllocationResult, key: "allocation", nilable: true, read_only: false, description: "Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated."},
    {name: "deallocation_requested", kind: ::Bool, key: "deallocationRequested", nilable: true, read_only: false, description: "DeallocationRequested indicates that a ResourceClaim is to be deallocated.\n\nThe driver then must deallocate this claim and reset the field together with clearing the Allocation field.\n\nWhile DeallocationRequested is set, no new consumers may be added to ReservedFor."},
    {name: "driver_name", kind: String, key: "driverName", nilable: true, read_only: false, description: "DriverName is a copy of the driver name from the ResourceClass at the time when allocation started."},
    {name: "reserved_for", kind: ::Set(::K8S::Api::Resource::V1alpha1::ResourceClaimConsumerReference), key: "reservedFor", nilable: true, read_only: false, description: "ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.\n\nThere can be at most 32 such reservations. This may get increased in the future, but not reduced."},

  ]
)
