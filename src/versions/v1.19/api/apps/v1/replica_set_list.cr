# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./replica_set"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "ReplicaSetList",
  namespace: "::K8S::Api::Apps::V1",
  list: true,
  list_kind: K8S::Api::Apps::V1::ReplicaSet,
  description: "ReplicaSetList is a collection of ReplicaSets.",
)
