# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../../apimachinery/apis/meta/v1/object_meta"
require "./custom_resource_definition_spec"
require "./custom_resource_definition_status"

::K8S::Kubernetes::Resource.define_resource("apiextensions.k8s.io", "v1", "CustomResourceDefinition",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "spec", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec, key: "spec", nilable: false, read_only: false, description: "spec describes how the user wants the resources to appear"},
    {name: "status", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus, key: "status", nilable: true, read_only: false, description: "status indicates the actual state of the CustomResourceDefinition"},

  ],
  description: "CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.",
  versions: [{group: "apiextensions.k8s.io", kind: "CustomResourceDefinition", version: "v1"}],
)
