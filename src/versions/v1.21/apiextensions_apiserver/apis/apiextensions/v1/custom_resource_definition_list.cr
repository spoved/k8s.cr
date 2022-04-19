# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../../apimachinery/apis/meta/v1/list_meta"
require "./custom_resource_definition"

::K8S::Kubernetes::Resource.define_resource("apiextensions.k8s.io", "v1", "CustomResourceDefinitionList",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  list: true,
  list_kind: K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition,
  description: "CustomResourceDefinitionList is a list of CustomResourceDefinition objects.",
)
