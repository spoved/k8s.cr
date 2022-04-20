# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./stateful_set_spec"
require "./stateful_set_status"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "StatefulSet",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apps::V1::StatefulSetSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the desired identities of pods in this set."},
    {name: "status", kind: ::K8S::Api::Apps::V1::StatefulSetStatus, key: "status", nilable: true, read_only: false, description: "Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time."},

  ],
  description: "StatefulSet represents a set of pods with consistent identities. Identities are defined as:\n - Network: A single stable DNS and hostname.\n - Storage: As many VolumeClaims as requested.\nThe StatefulSet guarantees that a given network identity will always map to the same storage identity.",
)
