# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceSubresourceScale",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1",
  properties: [

    {name: "label_selector_path", kind: String, key: "labelSelectorPath", nilable: true, read_only: false, description: "labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale` subresource will default to the empty string.)"},
    {name: "spec_replicas_path", kind: String, key: "specReplicasPath", nilable: false, read_only: false, description: "specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.spec`. If there is no value under the given path in the custom resource, the [`/scale` subresource will return an error on GET.](`/scale` subresource will return an error on GET.)"},
    {name: "status_replicas_path", kind: String, key: "statusReplicasPath", nilable: false, read_only: false, description: "statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be a JSON Path under `.status`. If there is no value under the given path in the custom resource, the `status.replicas` value in the [`/scale` subresource will default to 0.](`/scale` subresource will default to 0.)"},

  ]
)
