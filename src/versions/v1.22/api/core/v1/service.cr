# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./service_spec"
require "./service_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Service",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::ServiceSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the behavior of a service. [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::ServiceStatus, key: "status", nilable: true, read_only: false, description: "Most recently observed status of the service. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.",
)
