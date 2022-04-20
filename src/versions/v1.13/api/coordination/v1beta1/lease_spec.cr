# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("LeaseSpec",
  namespace: "::K8S::Api::Coordination::V1beta1",
  properties: [

    {name: "acquire_time", kind: ::Time, key: "acquireTime", nilable: true, read_only: false, description: "acquireTime is a time when the current lease was acquired."},
    {name: "holder_identity", kind: String, key: "holderIdentity", nilable: true, read_only: false, description: "holderIdentity contains the identity of the holder of a current lease."},
    {name: "lease_duration_seconds", kind: Int32, key: "leaseDurationSeconds", nilable: true, read_only: false, description: "leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime."},
    {name: "lease_transitions", kind: Int32, key: "leaseTransitions", nilable: true, read_only: false, description: "leaseTransitions is the number of transitions of a lease between holders."},
    {name: "renew_time", kind: ::Time, key: "renewTime", nilable: true, read_only: false, description: "renewTime is a time when the current holder of a lease has last updated the lease."},

  ]
)
