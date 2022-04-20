# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_template_spec"

::K8S::Kubernetes::Resource.define_resource("", "v1", "PodTemplate",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "template", kind: ::K8S::Api::Core::V1::PodTemplateSpec, key: "template", nilable: true, read_only: false, description: "Template defines the pods that will be created from this pod template. [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "PodTemplate describes a template for creating copies of a predefined pod.",
)
