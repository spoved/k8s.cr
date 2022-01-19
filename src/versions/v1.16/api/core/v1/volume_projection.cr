# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::VolumeProjection; end

require "./config_map_projection"
require "./downward_api_projection"
require "./secret_projection"
require "./service_account_token_projection"

module K8S
  # Namespace holding the types for `Api::Core::V1::VolumeProjection`.
  module Types::Api::Core::V1::VolumeProjection
    alias ValueType = ::K8S::Api::Core::V1::ConfigMapProjection | ::K8S::Api::Core::V1::DownwardAPIProjection | ::K8S::Api::Core::V1::SecretProjection | ::K8S::Api::Core::V1::ServiceAccountTokenProjection | Nil
    alias Instance = ::K8S::Object(ValueType)

    # information about the configMap data to project
    abstract def config_map : ::K8S::Api::Core::V1::ConfigMapProjection?
    # :ditto:
    abstract def config_map! : ::K8S::Api::Core::V1::ConfigMapProjection
    # :ditto:
    abstract def config_map? : ::K8S::Api::Core::V1::ConfigMapProjection?
    # :ditto:
    abstract def config_map=(value : ::K8S::Api::Core::V1::ConfigMapProjection?)
    # information about the downwardAPI data to project
    abstract def downward_api : ::K8S::Api::Core::V1::DownwardAPIProjection?
    # :ditto:
    abstract def downward_api! : ::K8S::Api::Core::V1::DownwardAPIProjection
    # :ditto:
    abstract def downward_api? : ::K8S::Api::Core::V1::DownwardAPIProjection?
    # :ditto:
    abstract def downward_api=(value : ::K8S::Api::Core::V1::DownwardAPIProjection?)
    # information about the secret data to project
    abstract def secret : ::K8S::Api::Core::V1::SecretProjection?
    # :ditto:
    abstract def secret! : ::K8S::Api::Core::V1::SecretProjection
    # :ditto:
    abstract def secret? : ::K8S::Api::Core::V1::SecretProjection?
    # :ditto:
    abstract def secret=(value : ::K8S::Api::Core::V1::SecretProjection?)
    # information about the serviceAccountToken data to project
    abstract def service_account_token : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
    # :ditto:
    abstract def service_account_token! : ::K8S::Api::Core::V1::ServiceAccountTokenProjection
    # :ditto:
    abstract def service_account_token? : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
    # :ditto:
    abstract def service_account_token=(value : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?)
  end

  # Projection that may be projected along with other supported volume types
  @[::K8S::Properties(
    config_map: {key: "configMap", accessor: "config_map", kind: "::K8S::Api::Core::V1::ConfigMapProjection", nilable: true, default: nil, read_only: false, description: "information about the configMap data to project"},
    downward_api: {key: "downwardAPI", accessor: "downward_api", kind: "::K8S::Api::Core::V1::DownwardAPIProjection", nilable: true, default: nil, read_only: false, description: "information about the downwardAPI data to project"},
    secret: {key: "secret", accessor: "secret", kind: "::K8S::Api::Core::V1::SecretProjection", nilable: true, default: nil, read_only: false, description: "information about the secret data to project"},
    service_account_token: {key: "serviceAccountToken", accessor: "service_account_token", kind: "::K8S::Api::Core::V1::ServiceAccountTokenProjection", nilable: true, default: nil, read_only: false, description: "information about the serviceAccountToken data to project"},
  )]
  class Api::Core::V1::VolumeProjection < ::K8S::Types::Api::Core::V1::VolumeProjection::Instance
    include ::K8S::Types::Api::Core::V1::VolumeProjection
    include ::K8S::Kubernetes::Object

    # information about the configMap data to project
    def config_map : ::K8S::Api::Core::V1::ConfigMapProjection?
      self.["configMap"].as(::K8S::Api::Core::V1::ConfigMapProjection?)
    end

    # :ditto:
    def config_map! : ::K8S::Api::Core::V1::ConfigMapProjection
      self.["configMap"].as(::K8S::Api::Core::V1::ConfigMapProjection?).not_nil!
    end

    # :ditto:
    def config_map? : ::K8S::Api::Core::V1::ConfigMapProjection?
      self.["configMap"]?.as(::K8S::Api::Core::V1::ConfigMapProjection?)
    end

    # :ditto:
    def config_map=(value : ::K8S::Api::Core::V1::ConfigMapProjection?)
      self.["configMap"] = value
    end

    # information about the downwardAPI data to project
    def downward_api : ::K8S::Api::Core::V1::DownwardAPIProjection?
      self.["downwardAPI"].as(::K8S::Api::Core::V1::DownwardAPIProjection?)
    end

    # :ditto:
    def downward_api! : ::K8S::Api::Core::V1::DownwardAPIProjection
      self.["downwardAPI"].as(::K8S::Api::Core::V1::DownwardAPIProjection?).not_nil!
    end

    # :ditto:
    def downward_api? : ::K8S::Api::Core::V1::DownwardAPIProjection?
      self.["downwardAPI"]?.as(::K8S::Api::Core::V1::DownwardAPIProjection?)
    end

    # :ditto:
    def downward_api=(value : ::K8S::Api::Core::V1::DownwardAPIProjection?)
      self.["downwardAPI"] = value
    end

    # information about the secret data to project
    def secret : ::K8S::Api::Core::V1::SecretProjection?
      self.["secret"].as(::K8S::Api::Core::V1::SecretProjection?)
    end

    # :ditto:
    def secret! : ::K8S::Api::Core::V1::SecretProjection
      self.["secret"].as(::K8S::Api::Core::V1::SecretProjection?).not_nil!
    end

    # :ditto:
    def secret? : ::K8S::Api::Core::V1::SecretProjection?
      self.["secret"]?.as(::K8S::Api::Core::V1::SecretProjection?)
    end

    # :ditto:
    def secret=(value : ::K8S::Api::Core::V1::SecretProjection?)
      self.["secret"] = value
    end

    # information about the serviceAccountToken data to project
    def service_account_token : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
      self.["serviceAccountToken"].as(::K8S::Api::Core::V1::ServiceAccountTokenProjection?)
    end

    # :ditto:
    def service_account_token! : ::K8S::Api::Core::V1::ServiceAccountTokenProjection
      self.["serviceAccountToken"].as(::K8S::Api::Core::V1::ServiceAccountTokenProjection?).not_nil!
    end

    # :ditto:
    def service_account_token? : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
      self.["serviceAccountToken"]?.as(::K8S::Api::Core::V1::ServiceAccountTokenProjection?)
    end

    # :ditto:
    def service_account_token=(value : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?)
      self.["serviceAccountToken"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "configMap", accessor: "config_map", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapProjection },
        { key: "downwardAPI", accessor: "downward_api", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::DownwardAPIProjection },
        { key: "secret", accessor: "secret", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretProjection },
        { key: "serviceAccountToken", accessor: "service_account_token", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ServiceAccountTokenProjection },
      ])
end
  end
end
