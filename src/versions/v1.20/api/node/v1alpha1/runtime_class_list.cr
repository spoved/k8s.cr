# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./runtime_class"

::K8S::Kubernetes::Resource.define_resource("node.k8s.io", "v1alpha1", "RuntimeClassList",
  namespace: "::K8S::Api::Node::V1alpha1",
  list: true,
  list_kind: K8S::Api::Node::V1alpha1::RuntimeClass,
  description: "RuntimeClassList is a list of RuntimeClass objects.",
)
