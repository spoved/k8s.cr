# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./event"

::K8S::Kubernetes::Resource.define_resource("events.k8s.io", "v1beta1", "EventList",
  namespace: "::K8S::Api::Events::V1beta1",
  list: true,
  list_kind: K8S::Api::Events::V1beta1::Event,
  description: "EventList is a list of Event objects.",
)
