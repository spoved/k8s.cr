# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # EnvVarSource represents a source for the value of an EnvVar.
  class Api::Core::V1::EnvVarSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Selects a key of a ConfigMap.
    property config_map_key_ref : Api::Core::V1::ConfigMapKeySelector | Nil

    # Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP.
    property field_ref : Api::Core::V1::ObjectFieldSelector | Nil

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
    property resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil

    # Selects a key of a secret in the pod's namespace
    property secret_key_ref : Api::Core::V1::SecretKeySelector | Nil

    ::YAML.mapping({
      config_map_key_ref: {type: Api::Core::V1::ConfigMapKeySelector, nilable: true, key: "configMapKeyRef", getter: false, setter: false},
      field_ref:          {type: Api::Core::V1::ObjectFieldSelector, nilable: true, key: "fieldRef", getter: false, setter: false},
      resource_field_ref: {type: Api::Core::V1::ResourceFieldSelector, nilable: true, key: "resourceFieldRef", getter: false, setter: false},
      secret_key_ref:     {type: Api::Core::V1::SecretKeySelector, nilable: true, key: "secretKeyRef", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      config_map_key_ref: {type: Api::Core::V1::ConfigMapKeySelector, nilable: true, key: "configMapKeyRef", getter: false, setter: false},
      field_ref:          {type: Api::Core::V1::ObjectFieldSelector, nilable: true, key: "fieldRef", getter: false, setter: false},
      resource_field_ref: {type: Api::Core::V1::ResourceFieldSelector, nilable: true, key: "resourceFieldRef", getter: false, setter: false},
      secret_key_ref:     {type: Api::Core::V1::SecretKeySelector, nilable: true, key: "secretKeyRef", getter: false, setter: false},
    }, true)

    def initialize(*, @config_map_key_ref : Api::Core::V1::ConfigMapKeySelector | Nil = nil, @field_ref : Api::Core::V1::ObjectFieldSelector | Nil = nil, @resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil = nil, @secret_key_ref : Api::Core::V1::SecretKeySelector | Nil = nil)
    end
  end
end
