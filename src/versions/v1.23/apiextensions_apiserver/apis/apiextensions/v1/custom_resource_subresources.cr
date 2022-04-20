# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./custom_resource_subresource_scale"
require "./custom_resource_subresource_status"

::K8S::Kubernetes::Resource.define_object("CustomResourceSubresources",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "scale", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceScale, key: "scale", nilable: true, read_only: false, description: "scale indicates the custom resource should serve a [`/scale` subresource that returns an `autoscaling/v1` Scale object.](`/scale` subresource that returns an `autoscaling/v1` Scale object.)"},
    {name: "status", kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresourceStatus, key: "status", nilable: true, read_only: false, description: "status indicates the custom resource should serve a [`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.](`/status` subresource. When enabled: 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object. 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.)"},

  ]
)
