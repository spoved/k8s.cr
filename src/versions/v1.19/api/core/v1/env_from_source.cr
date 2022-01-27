# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EnvFromSource; end

require "./config_map_env_source"
require "./secret_env_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::EnvFromSource`.
  module Types::Api::Core::V1::EnvFromSource
    # The ConfigMap to select from
    abstract def config_map_ref : ::K8S::Api::Core::V1::ConfigMapEnvSource?
    # :ditto:
    abstract def config_map_ref! : ::K8S::Api::Core::V1::ConfigMapEnvSource
    # :ditto:
    abstract def config_map_ref? : ::K8S::Api::Core::V1::ConfigMapEnvSource?
    # :ditto:
    abstract def config_map_ref=(value : ::K8S::Api::Core::V1::ConfigMapEnvSource)
    # An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    abstract def prefix : String?
    # :ditto:
    abstract def prefix! : String
    # :ditto:
    abstract def prefix? : String?
    # :ditto:
    abstract def prefix=(value : String)
    # The Secret to select from
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretEnvSource?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretEnvSource
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretEnvSource?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretEnvSource)
  end

  # EnvFromSource represents the source of a set of ConfigMaps
  @[::K8S::Properties(
    config_map_ref: {key: "configMapRef", accessor: "config_map_ref", kind: "::K8S::Api::Core::V1::ConfigMapEnvSource", nilable: true, default: nil, read_only: false, description: "The ConfigMap to select from", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    prefix: {key: "prefix", accessor: "prefix", kind: "String", nilable: true, default: nil, read_only: false, description: "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretEnvSource", nilable: true, default: nil, read_only: false, description: "The Secret to select from", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EnvFromSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EnvFromSource
    k8s_object_accessor("configMapRef", config_map_ref : ::K8S::Api::Core::V1::ConfigMapEnvSource, true, false, "The ConfigMap to select from")
    k8s_object_accessor("prefix", prefix : String, true, false, "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::SecretEnvSource, true, false, "The Secret to select from")

    def initialize(*, config_map_ref : ::K8S::Api::Core::V1::ConfigMapEnvSource? = nil, prefix : String? = nil, secret_ref : ::K8S::Api::Core::V1::SecretEnvSource? = nil)
      super()
      self.["configMapRef"] = config_map_ref
      self.["prefix"] = prefix
      self.["secretRef"] = secret_ref
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "configMapRef", accessor: "config_map_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapEnvSource},
      {key: "prefix", accessor: "prefix", nilable: true, read_only: false, default: nil, kind: String},
      {key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretEnvSource},
    ])
  end
end
