# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./non_resource_attributes"
require "./resource_attributes"

::K8S::Kubernetes::Resource.define_object("SelfSubjectAccessReviewSpec",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "non_resource_attributes", kind: ::K8S::Api::Authorization::V1::NonResourceAttributes, key: "nonResourceAttributes", nilable: true, read_only: false, description: "NonResourceAttributes describes information for a non-resource access request"},
    {name: "resource_attributes", kind: ::K8S::Api::Authorization::V1::ResourceAttributes, key: "resourceAttributes", nilable: true, read_only: false, description: "ResourceAuthorizationAttributes describes information for a resource access request"},

  ]
)
