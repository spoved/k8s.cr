# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./priority_level_configuration"

::K8S::Kubernetes::Resource.define_resource("flowcontrol.apiserver.k8s.io", "v1beta1", "PriorityLevelConfigurationList",
  namespace: "::K8S::Api::Flowcontrol::V1beta1",
  list: true,
  list_kind: K8S::Api::Flowcontrol::V1beta1::PriorityLevelConfiguration,
  description: "PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.",
)
