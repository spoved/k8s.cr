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
    abstract def config_map_ref=(value : ::K8S::Api::Core::V1::ConfigMapEnvSource?)
    # An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    abstract def prefix : String?
    # :ditto:
    abstract def prefix! : String
    # :ditto:
    abstract def prefix? : String?
    # :ditto:
    abstract def prefix=(value : String?)
    # The Secret to select from
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretEnvSource?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretEnvSource
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretEnvSource?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretEnvSource?)
  end

  # EnvFromSource represents the source of a set of ConfigMaps
  @[::K8S::Properties(
    config_map_ref: {key: "configMapRef", accessor: "config_map_ref", kind: "::K8S::Api::Core::V1::ConfigMapEnvSource", nilable: true, default: nil, read_only: false, description: "The ConfigMap to select from", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    prefix: {key: "prefix", accessor: "prefix", kind: "String", nilable: true, default: nil, read_only: false, description: "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretEnvSource", nilable: true, default: nil, read_only: false, description: "The Secret to select from", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EnvFromSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EnvFromSource

    # The ConfigMap to select from
    def config_map_ref : ::K8S::Api::Core::V1::ConfigMapEnvSource?
      self.["configMapRef"].as(::K8S::Api::Core::V1::ConfigMapEnvSource?)
    end

    # :ditto:
    def config_map_ref! : ::K8S::Api::Core::V1::ConfigMapEnvSource
      self.["configMapRef"].as(::K8S::Api::Core::V1::ConfigMapEnvSource?).not_nil!
    end

    # :ditto:
    def config_map_ref? : ::K8S::Api::Core::V1::ConfigMapEnvSource?
      self.["configMapRef"]?.as(::K8S::Api::Core::V1::ConfigMapEnvSource?)
    end

    # :ditto:
    def config_map_ref=(value : ::K8S::Api::Core::V1::ConfigMapEnvSource?)
      self.["configMapRef"] = value
    end

    # An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    def prefix : String?
      self.["prefix"].as(String?)
    end

    # :ditto:
    def prefix! : String
      self.["prefix"].as(String?).not_nil!
    end

    # :ditto:
    def prefix? : String?
      self.["prefix"]?.as(String?)
    end

    # :ditto:
    def prefix=(value : String?)
      self.["prefix"] = value
    end

    # The Secret to select from
    def secret_ref : ::K8S::Api::Core::V1::SecretEnvSource?
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretEnvSource?)
    end

    # :ditto:
    def secret_ref! : ::K8S::Api::Core::V1::SecretEnvSource
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretEnvSource?).not_nil!
    end

    # :ditto:
    def secret_ref? : ::K8S::Api::Core::V1::SecretEnvSource?
      self.["secretRef"]?.as(::K8S::Api::Core::V1::SecretEnvSource?)
    end

    # :ditto:
    def secret_ref=(value : ::K8S::Api::Core::V1::SecretEnvSource?)
      self.["secretRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "configMapRef", accessor: "config_map_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapEnvSource },
        { key: "prefix", accessor: "prefix", nilable: true, read_only: false, default: nil, kind: String },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretEnvSource },
      ])
end
  end
end
