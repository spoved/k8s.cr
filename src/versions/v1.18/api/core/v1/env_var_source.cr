# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./config_map_key_selector"
require "./object_field_selector"
require "./resource_field_selector"
require "./secret_key_selector"

::K8S::Kubernetes::Resource.define_object("EnvVarSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "config_map_key_ref", kind: ::K8S::Api::Core::V1::ConfigMapKeySelector, key: "configMapKeyRef", nilable: true, read_only: false, description: "Selects a key of a ConfigMap."},
    {name: "field_ref", kind: ::K8S::Api::Core::V1::ObjectFieldSelector, key: "fieldRef", nilable: true, read_only: false, description: "Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."},
    {name: "resource_field_ref", kind: ::K8S::Api::Core::V1::ResourceFieldSelector, key: "resourceFieldRef", nilable: true, read_only: false, description: "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."},
    {name: "secret_key_ref", kind: ::K8S::Api::Core::V1::SecretKeySelector, key: "secretKeyRef", nilable: true, read_only: false, description: "Selects a key of a secret in the pod's namespace"},

  ]
)
