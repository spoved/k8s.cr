# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./ingress_class"

::K8S::Kubernetes::Resource.define_resource("networking.k8s.io", "v1beta1", "IngressClassList",
  namespace: "::K8S::Api::Networking::V1beta1",
  list: true,
  list_kind: K8S::Api::Networking::V1beta1::IngressClass,
  description: "IngressClassList is a collection of IngressClasses.",
)
