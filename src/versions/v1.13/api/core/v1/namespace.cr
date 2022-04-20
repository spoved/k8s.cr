# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./namespace_spec"
require "./namespace_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Namespace",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::NamespaceSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the behavior of the Namespace. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::NamespaceStatus, key: "status", nilable: true, read_only: false, description: "Status describes the current status of a Namespace. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ],
  description: "Namespace provides a scope for Names. Use of multiple namespaces is optional.",
)
