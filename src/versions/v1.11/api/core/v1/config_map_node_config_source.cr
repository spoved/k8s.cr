# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ConfigMapNodeConfigSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "kubelet_config_key", kind: String, key: "kubeletConfigKey", nilable: false, read_only: false, description: "KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases."},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Name is the metadata.name of the referenced ConfigMap. This field is required in all cases."},
    {name: "namespace", kind: String, key: "namespace", nilable: false, read_only: false, description: "Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases."},
    {name: "resource_version", kind: String, key: "resourceVersion", nilable: true, read_only: false, description: "ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status."},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status."},

  ]
)
