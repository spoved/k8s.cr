# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./ingress_spec"
require "./ingress_status"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "Ingress",
  namespace: "::K8S::Api::Networking::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Networking::V1::IngressSpec, key: "spec", nilable: true, read_only: false, description: "spec is the desired state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Networking::V1::IngressStatus, key: "status", nilable: true, read_only: false, description: "status is the current state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.",
  versions: [{group: "networking.k8s.io", kind: "Ingress", version: "v1"}],
)
