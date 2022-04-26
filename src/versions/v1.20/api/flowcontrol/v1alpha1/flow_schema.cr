# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./flow_schema_spec"
require "./flow_schema_status"

::K8S::Kubernetes::Resource.define_resource("flowcontrol.apiserver.k8s.io", "v1alpha1", "FlowSchema",
  namespace: "::K8S::Api::Flowcontrol::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Flowcontrol::V1alpha1::FlowSchemaSpec, key: "spec", nilable: true, read_only: false, description: "`spec` is the specification of the desired behavior of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Flowcontrol::V1alpha1::FlowSchemaStatus, key: "status", nilable: true, read_only: false, description: "`status` is the current status of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a \"flow distinguisher\".",
  versions: [{group: "flowcontrol.apiserver.k8s.io", kind: "FlowSchema", version: "v1alpha1"}],
)
