# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./flow_schema"

::K8S::Kubernetes::Resource.define_resource("flowcontrol.apiserver.k8s.io", "v1beta1", "FlowSchemaList",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  list: true,
  list_kind: K8S::Api::Flowcontrol::V1beta1::FlowSchema,
  description: "FlowSchemaList is a list of FlowSchema objects.",
)
