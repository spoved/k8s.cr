# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_spec"
require "./pod_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Pod",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::PodSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::PodStatus, key: "status", nilable: true, read_only: false, description: "Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.",
)
