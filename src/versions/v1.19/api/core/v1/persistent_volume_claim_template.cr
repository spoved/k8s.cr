# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./persistent_volume_claim_spec"

::K8S::Kubernetes::Resource.define_object("PersistentVolumeClaimTemplate",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, key: "metadata", nilable: true, read_only: false, description: "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."},
    {name: "spec", kind: ::K8S::Api::Core::V1::PersistentVolumeClaimSpec, key: "spec", nilable: false, read_only: false, description: "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here."},

  ]
)
