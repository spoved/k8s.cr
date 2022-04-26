# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./replica_set_spec"
require "./replica_set_status"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "ReplicaSet",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apps::V1::ReplicaSetSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the specification of the desired behavior of the ReplicaSet. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Apps::V1::ReplicaSetStatus, key: "status", nilable: true, read_only: false, description: "Status is the most recently observed status of the ReplicaSet. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "ReplicaSet ensures that a specified number of pod replicas are running at any given time.",
  versions: [{group: "apps", kind: "ReplicaSet", version: "v1"}],
)
