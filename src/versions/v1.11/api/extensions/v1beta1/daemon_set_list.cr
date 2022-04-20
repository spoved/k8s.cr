# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./daemon_set"

::K8S::Kubernetes::Resource.define_resource("extensions", "v1beta1", "DaemonSetList",
  namespace: "::K8S::Api::Extensions::V1beta1",
  list: true,
  list_kind: K8S::Api::Extensions::V1beta1::DaemonSet,
  description: "DaemonSetList is a collection of daemon sets.",
)
