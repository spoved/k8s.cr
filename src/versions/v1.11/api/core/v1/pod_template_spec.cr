# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_spec"

::K8S::Kubernetes::Resource.define_object("PodTemplateSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, key: "metadata", nilable: true, read_only: false, description: "Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)"},
    {name: "spec", kind: ::K8S::Api::Core::V1::PodSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ]
)
