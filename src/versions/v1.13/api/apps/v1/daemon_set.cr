# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./daemon_set_spec"
require "./daemon_set_status"

::K8S::Kubernetes::Resource.define_resource("apps", "v1", "DaemonSet",
  namespace: "::K8S::Api::Apps::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apps::V1::DaemonSetSpec, key: "spec", nilable: true, read_only: false, description: "The desired behavior of this daemon set. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},
    {name: "status", kind: ::K8S::Api::Apps::V1::DaemonSetStatus, key: "status", nilable: true, read_only: false, description: "The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)"},

  ],
  description: "DaemonSet represents the configuration of a daemon set.",
  versions: [{group: "apps", kind: "DaemonSet", version: "v1"}],
)
