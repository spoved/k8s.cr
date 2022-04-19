# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./daemon_set"

::K8S::Kubernetes::Resource.define_resource("apps", "v1beta2", "DaemonSetList",
  namespace: "::K8S::Api::Apps::V1beta2",
  list: true,
  list_kind: K8S::Api::Apps::V1beta2::DaemonSet,
  description: "DaemonSetList is a collection of daemon sets.",
)
