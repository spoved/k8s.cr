# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_subresource_scale"
require "./custom_resource_subresource_status"

::K8S::Kubernetes::Resource.define_object("CustomResourceSubresources",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "scale", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale, key: "scale", nilable: true, read_only: false, description: "Scale denotes the scale subresource for CustomResources"},
    {name: "status", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus, key: "status", nilable: true, read_only: false, description: "Status denotes the status subresource for CustomResources"},

  ]
)
