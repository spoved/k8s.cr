# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./ingress_spec"
require "./ingress_status"

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "Ingress",
  namespace: "::K8S::Api::Extensions::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Extensions::V1beta1::IngressSpec, key: "spec", nilable: true, read_only: false, description: "Spec is the desired state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Extensions::V1beta1::IngressStatus, key: "status", nilable: true, read_only: false, description: "Status is the current state of the Ingress. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc. DEPRECATED - This group version of Ingress is deprecated by networking.k8s.io/v1beta1 Ingress. See the release notes for more information.",
)
