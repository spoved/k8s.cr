# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./node"

::K8S::Kubernetes::Resource.define_resource("", "v1", "NodeList",
  namespace: "::K8S::Api::Core::V1",
  list: true,
  list_kind: K8S::Api::Core::V1::Node,
  description: "NodeList is the whole list of all Nodes which have been registered with master.",
)
