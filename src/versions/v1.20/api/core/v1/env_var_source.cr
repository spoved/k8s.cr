# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EnvVarSource; end

require "./config_map_key_selector"
require "./object_field_selector"
require "./resource_field_selector"
require "./secret_key_selector"

module K8S
  # Namespace holding the types for `Api::Core::V1::EnvVarSource`.
  module Types::Api::Core::V1::EnvVarSource
    alias ValueType = ::K8S::Api::Core::V1::ConfigMapKeySelector | ::K8S::Api::Core::V1::ObjectFieldSelector | ::K8S::Api::Core::V1::ResourceFieldSelector | ::K8S::Api::Core::V1::SecretKeySelector | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Selects a key of a ConfigMap.
    abstract def config_map_key_ref : ::K8S::Api::Core::V1::ConfigMapKeySelector?
    # :ditto:
    abstract def config_map_key_ref! : ::K8S::Api::Core::V1::ConfigMapKeySelector
    # :ditto:
    abstract def config_map_key_ref? : ::K8S::Api::Core::V1::ConfigMapKeySelector?
    # :ditto:
    abstract def config_map_key_ref=(value : ::K8S::Api::Core::V1::ConfigMapKeySelector?)
    # Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
    abstract def field_ref : ::K8S::Api::Core::V1::ObjectFieldSelector?
    # :ditto:
    abstract def field_ref! : ::K8S::Api::Core::V1::ObjectFieldSelector
    # :ditto:
    abstract def field_ref? : ::K8S::Api::Core::V1::ObjectFieldSelector?
    # :ditto:
    abstract def field_ref=(value : ::K8S::Api::Core::V1::ObjectFieldSelector?)
    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
    abstract def resource_field_ref : ::K8S::Api::Core::V1::ResourceFieldSelector?
    # :ditto:
    abstract def resource_field_ref! : ::K8S::Api::Core::V1::ResourceFieldSelector
    # :ditto:
    abstract def resource_field_ref? : ::K8S::Api::Core::V1::ResourceFieldSelector?
    # :ditto:
    abstract def resource_field_ref=(value : ::K8S::Api::Core::V1::ResourceFieldSelector?)
    # Selects a key of a secret in the pod's namespace
    abstract def secret_key_ref : ::K8S::Api::Core::V1::SecretKeySelector?
    # :ditto:
    abstract def secret_key_ref! : ::K8S::Api::Core::V1::SecretKeySelector
    # :ditto:
    abstract def secret_key_ref? : ::K8S::Api::Core::V1::SecretKeySelector?
    # :ditto:
    abstract def secret_key_ref=(value : ::K8S::Api::Core::V1::SecretKeySelector?)
  end

  # EnvVarSource represents a source for the value of an EnvVar.
  @[::K8S::Properties(
    config_map_key_ref: {key: "configMapKeyRef", accessor: "config_map_key_ref", kind: "::K8S::Api::Core::V1::ConfigMapKeySelector", nilable: true, default: nil, read_only: false, description: "Selects a key of a ConfigMap.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    field_ref: {key: "fieldRef", accessor: "field_ref", kind: "::K8S::Api::Core::V1::ObjectFieldSelector", nilable: true, default: nil, read_only: false, description: "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_field_ref: {key: "resourceFieldRef", accessor: "resource_field_ref", kind: "::K8S::Api::Core::V1::ResourceFieldSelector", nilable: true, default: nil, read_only: false, description: "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_key_ref: {key: "secretKeyRef", accessor: "secret_key_ref", kind: "::K8S::Api::Core::V1::SecretKeySelector", nilable: true, default: nil, read_only: false, description: "Selects a key of a secret in the pod's namespace", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EnvVarSource < ::K8S::Types::Api::Core::V1::EnvVarSource::Instance
    include ::K8S::Types::Api::Core::V1::EnvVarSource
    include ::K8S::Kubernetes::Object

    # Selects a key of a ConfigMap.
    def config_map_key_ref : ::K8S::Api::Core::V1::ConfigMapKeySelector?
      self.["configMapKeyRef"].as(::K8S::Api::Core::V1::ConfigMapKeySelector?)
    end

    # :ditto:
    def config_map_key_ref! : ::K8S::Api::Core::V1::ConfigMapKeySelector
      self.["configMapKeyRef"].as(::K8S::Api::Core::V1::ConfigMapKeySelector?).not_nil!
    end

    # :ditto:
    def config_map_key_ref? : ::K8S::Api::Core::V1::ConfigMapKeySelector?
      self.["configMapKeyRef"]?.as(::K8S::Api::Core::V1::ConfigMapKeySelector?)
    end

    # :ditto:
    def config_map_key_ref=(value : ::K8S::Api::Core::V1::ConfigMapKeySelector?)
      self.["configMapKeyRef"] = value
    end

    # Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
    def field_ref : ::K8S::Api::Core::V1::ObjectFieldSelector?
      self.["fieldRef"].as(::K8S::Api::Core::V1::ObjectFieldSelector?)
    end

    # :ditto:
    def field_ref! : ::K8S::Api::Core::V1::ObjectFieldSelector
      self.["fieldRef"].as(::K8S::Api::Core::V1::ObjectFieldSelector?).not_nil!
    end

    # :ditto:
    def field_ref? : ::K8S::Api::Core::V1::ObjectFieldSelector?
      self.["fieldRef"]?.as(::K8S::Api::Core::V1::ObjectFieldSelector?)
    end

    # :ditto:
    def field_ref=(value : ::K8S::Api::Core::V1::ObjectFieldSelector?)
      self.["fieldRef"] = value
    end

    # Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
    def resource_field_ref : ::K8S::Api::Core::V1::ResourceFieldSelector?
      self.["resourceFieldRef"].as(::K8S::Api::Core::V1::ResourceFieldSelector?)
    end

    # :ditto:
    def resource_field_ref! : ::K8S::Api::Core::V1::ResourceFieldSelector
      self.["resourceFieldRef"].as(::K8S::Api::Core::V1::ResourceFieldSelector?).not_nil!
    end

    # :ditto:
    def resource_field_ref? : ::K8S::Api::Core::V1::ResourceFieldSelector?
      self.["resourceFieldRef"]?.as(::K8S::Api::Core::V1::ResourceFieldSelector?)
    end

    # :ditto:
    def resource_field_ref=(value : ::K8S::Api::Core::V1::ResourceFieldSelector?)
      self.["resourceFieldRef"] = value
    end

    # Selects a key of a secret in the pod's namespace
    def secret_key_ref : ::K8S::Api::Core::V1::SecretKeySelector?
      self.["secretKeyRef"].as(::K8S::Api::Core::V1::SecretKeySelector?)
    end

    # :ditto:
    def secret_key_ref! : ::K8S::Api::Core::V1::SecretKeySelector
      self.["secretKeyRef"].as(::K8S::Api::Core::V1::SecretKeySelector?).not_nil!
    end

    # :ditto:
    def secret_key_ref? : ::K8S::Api::Core::V1::SecretKeySelector?
      self.["secretKeyRef"]?.as(::K8S::Api::Core::V1::SecretKeySelector?)
    end

    # :ditto:
    def secret_key_ref=(value : ::K8S::Api::Core::V1::SecretKeySelector?)
      self.["secretKeyRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "configMapKeyRef", accessor: "config_map_key_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapKeySelector },
        { key: "fieldRef", accessor: "field_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectFieldSelector },
        { key: "resourceFieldRef", accessor: "resource_field_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ResourceFieldSelector },
        { key: "secretKeyRef", accessor: "secret_key_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretKeySelector },
      ])
end
  end
end
