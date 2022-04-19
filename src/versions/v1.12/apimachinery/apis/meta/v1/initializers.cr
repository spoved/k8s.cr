# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./initializer"
require "./status"

::K8S::Kubernetes::Resource.define_object("Initializers",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "pending", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer), key: "pending", nilable: false, read_only: false, description: "Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients."},
    {name: "result", kind: ::K8S::Apimachinery::Apis::Meta::V1::Status, key: "result", nilable: true, read_only: false, description: "If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion."},

  ]
)
