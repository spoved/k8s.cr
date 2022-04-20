# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./ingress"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1", "IngressList",
  namespace: "::K8S::Api::Networking::V1",
  list: true,
  list_kind: K8S::Api::Networking::V1::Ingress,
  description: "IngressList is a collection of Ingress.",
)
