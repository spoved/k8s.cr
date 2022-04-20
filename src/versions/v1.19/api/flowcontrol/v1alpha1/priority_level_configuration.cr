# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./priority_level_configuration_spec"
require "./priority_level_configuration_status"

::K8S::Kubernetes::Resource.define_resource("flowcontrol.apiserver.k8s.io", "v1alpha1", "PriorityLevelConfiguration",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationSpec, key: "spec", nilable: true, read_only: false, description: "`spec` is the specification of the desired behavior of a \"request-priority\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationStatus, key: "status", nilable: true, read_only: false, description: "`status` is the current status of a \"request-priority\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "PriorityLevelConfiguration represents the configuration of a priority level.",
)
