# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./resource_claim_spec"

::K8S::Kubernetes::Resource.define_object("ResourceClaimTemplateSpec",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, key: "metadata", nilable: true, read_only: false, description: "ObjectMeta may contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."},
    {name: "spec", kind: ::K8S::Api::Resource::V1alpha2::ResourceClaimSpec, key: "spec", nilable: false, read_only: false, description: "Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here."},

  ]
)
