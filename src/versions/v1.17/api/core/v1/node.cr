# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./node_spec"
require "./node_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Node",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::NodeSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the behavior of a node. [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::NodeStatus, key: "status", nilable: true, read_only: false, description: "Most recently observed status of the node. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Node is a worker node in Kubernetes. Each node will have a unique identifier in the cache (i.e. in etcd).",
  versions: [{group: "", kind: "Node", version: "v1"}],
)
