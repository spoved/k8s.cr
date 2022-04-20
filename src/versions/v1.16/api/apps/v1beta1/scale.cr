# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./scale_spec"
require "./scale_status"

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta1", "Scale",
  namespace: "::K8S::Api::Apps::V1beta1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apps::V1beta1::ScaleSpec, key: "spec", nilable: true, read_only: false, description: "defines the behavior of the scale. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.)"},
    {name: "status", kind: ::K8S::Api::Apps::V1beta1::ScaleStatus, key: "status", nilable: true, read_only: false, description: "current status of the scale. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.)"},

  ],
  description: "Scale represents a scaling request for a resource.",
)
