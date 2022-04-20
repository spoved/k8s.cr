# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("CustomResourceSubresourceScale",
  namespace: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1",
  properties: [

    {name: "label_selector_path", kind: String, key: "labelSelectorPath", nilable: true, read_only: false, description: "LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status or .spec. Must be set to work with HPA. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.)"},
    {name: "spec_replicas_path", kind: String, key: "specReplicasPath", nilable: false, read_only: false, description: "SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET."},
    {name: "status_replicas_path", kind: String, key: "statusReplicasPath", nilable: false, read_only: false, description: "StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0."},

  ]
)
