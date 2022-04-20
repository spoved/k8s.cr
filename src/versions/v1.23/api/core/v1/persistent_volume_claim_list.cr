# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./persistent_volume_claim"

::K8S::Kubernetes::Resource.define_resource("", "v1", "PersistentVolumeClaimList",
  namespace: "::K8S::Api::Core::V1",
  list: true,
  list_kind: K8S::Api::Core::V1::PersistentVolumeClaim,
  description: "PersistentVolumeClaimList is a list of PersistentVolumeClaim items.",
)
