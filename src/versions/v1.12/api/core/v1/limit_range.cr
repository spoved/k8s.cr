# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./limit_range_spec"

::K8S::Kubernetes::Resource.define_resource("", "v1", "LimitRange",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::LimitRangeSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the limits enforced. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ],
  description: "LimitRange sets resource usage limits for each kind of resource in a Namespace.",
  versions: [{group: "", kind: "LimitRange", version: "v1"}],
)
