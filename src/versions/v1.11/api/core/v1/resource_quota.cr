# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./resource_quota_spec"
require "./resource_quota_status"

::K8S::Kubernetes::Resource.define_resource("", "v1", "ResourceQuota",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Core::V1::ResourceQuotaSpec, key: "spec", nilable: true, read_only: false, description: "Spec defines the desired quota. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Core::V1::ResourceQuotaStatus, key: "status", nilable: true, read_only: false, description: "Status defines the actual enforced quota and its current usage. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ],
  description: "ResourceQuota sets aggregate quota restrictions enforced per namespace",
)
