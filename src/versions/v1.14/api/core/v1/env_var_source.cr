# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EnvVarSource represents a source for the value of an EnvVar.
  @[::K8S::Properties(
    config_map_key_ref: {type: Api::Core::V1::ConfigMapKeySelector, nilable: true, key: "configMapKeyRef", getter: false, setter: false},
    field_ref: {type: Api::Core::V1::ObjectFieldSelector, nilable: true, key: "fieldRef", getter: false, setter: false},
    resource_field_ref: {type: Api::Core::V1::ResourceFieldSelector, nilable: true, key: "resourceFieldRef", getter: false, setter: false},
    secret_key_ref: {type: Api::Core::V1::SecretKeySelector, nilable: true, key: "secretKeyRef", getter: false, setter: false},
  )]
  class Api::Core::V1::EnvVarSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Selects a key of a ConfigMap.
    @[::JSON::Field(key: "configMapKeyRef", emit_null: false)]
    @[::YAML::Field(key: "configMapKeyRef", emit_null: false)]
    property config_map_key_ref : Api::Core::V1::ConfigMapKeySelector | Nil

    # Selects a field of the pod: supports metadata.name, metadata.namespace, metadata.labels, metadata.annotations, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP.
    @[::JSON::Field(key: "fieldRef", emit_null: false)]
    @[::YAML::Field(key: "fieldRef", emit_null: false)]
    property field_ref : Api::Core::V1::ObjectFieldSelector | Nil

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
    @[::JSON::Field(key: "resourceFieldRef", emit_null: false)]
    @[::YAML::Field(key: "resourceFieldRef", emit_null: false)]
    property resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil

    # Selects a key of a secret in the pod's namespace
    @[::JSON::Field(key: "secretKeyRef", emit_null: false)]
    @[::YAML::Field(key: "secretKeyRef", emit_null: false)]
    property secret_key_ref : Api::Core::V1::SecretKeySelector | Nil

    def initialize(*, @config_map_key_ref : Api::Core::V1::ConfigMapKeySelector | Nil = nil, @field_ref : Api::Core::V1::ObjectFieldSelector | Nil = nil, @resource_field_ref : Api::Core::V1::ResourceFieldSelector | Nil = nil, @secret_key_ref : Api::Core::V1::SecretKeySelector | Nil = nil)
    end
  end
end
