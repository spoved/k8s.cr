# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./resource_claim_template_spec"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha2", "ResourceClaimTemplate",
  namespace: "::K8S::Api::Resource::V1alpha2",
  properties: [

    {name: "spec", kind: ::K8S::Api::Resource::V1alpha2::ResourceClaimTemplateSpec, key: "spec", nilable: false, read_only: false, description: "Describes the ResourceClaim that is to be generated.\n\nThis field is immutable. A ResourceClaim will get created by the control plane for a Pod when needed and then not get updated anymore."},

  ],
  description: "ResourceClaimTemplate is used to produce ResourceClaim objects.",
  versions: [{group: "resource.k8s.io", kind: "ResourceClaimTemplate", version: "v1alpha2"}],
)
