# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./replication_controller_spec"
require "./replication_controller_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ReplicationController",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::ReplicationControllerSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the specification of the desired behavior of the replication controller. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::ReplicationControllerStatus, key: "status", nilable: true, read_only: false, description: "Status is the most recently observed status of the replication controller. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "ReplicationController represents the configuration of a replication controller.",
  versions: [{group: "", kind: "ReplicationController", version: "v1"}],
)
