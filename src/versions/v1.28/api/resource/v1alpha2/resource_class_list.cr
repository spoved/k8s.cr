# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./resource_class"

::K8S::Kubernetes::Resource.define_resource("resource.k8s.io", "v1alpha2", "ResourceClassList",
  namespace: "::K8S::Api::Resource::V1alpha2",
  list: true,
  list_kind: K8S::Api::Resource::V1alpha2::ResourceClass,
  description: "ResourceClassList is a collection of classes.",
)
