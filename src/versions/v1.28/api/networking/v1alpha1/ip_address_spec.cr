# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./parent_reference"

::K8S::Kubernetes::Resource.define_object("IPAddressSpec",
  namespace: "::K8S::Api::Networking::V1alpha1",
  properties: [

    {name: "parent_ref", kind: ::K8S::Api::Networking::V1alpha1::ParentReference, key: "parentRef", nilable: true, read_only: false, description: "ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object."},

  ]
)
