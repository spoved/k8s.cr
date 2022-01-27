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
    # information about the configMap data to project
    abstract def config_map : ::K8S::Api::Core::V1::ConfigMapProjection?
    # :ditto:
    abstract def config_map! : ::K8S::Api::Core::V1::ConfigMapProjection
    # :ditto:
    abstract def config_map? : ::K8S::Api::Core::V1::ConfigMapProjection?
    # :ditto:
    abstract def config_map=(value : ::K8S::Api::Core::V1::ConfigMapProjection)
    # information about the downwardAPI data to project
    abstract def downward_api : ::K8S::Api::Core::V1::DownwardAPIProjection?
    # :ditto:
    abstract def downward_api! : ::K8S::Api::Core::V1::DownwardAPIProjection
    # :ditto:
    abstract def downward_api? : ::K8S::Api::Core::V1::DownwardAPIProjection?
    # :ditto:
    abstract def downward_api=(value : ::K8S::Api::Core::V1::DownwardAPIProjection)
    # information about the secret data to project
    abstract def secret : ::K8S::Api::Core::V1::SecretProjection?
    # :ditto:
    abstract def secret! : ::K8S::Api::Core::V1::SecretProjection
    # :ditto:
    abstract def secret? : ::K8S::Api::Core::V1::SecretProjection?
    # :ditto:
    abstract def secret=(value : ::K8S::Api::Core::V1::SecretProjection)
    # information about the serviceAccountToken data to project
    abstract def service_account_token : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
    # :ditto:
    abstract def service_account_token! : ::K8S::Api::Core::V1::ServiceAccountTokenProjection
    # :ditto:
    abstract def service_account_token? : ::K8S::Api::Core::V1::ServiceAccountTokenProjection?
    # :ditto:
    abstract def service_account_token=(value : ::K8S::Api::Core::V1::ServiceAccountTokenProjection)
  end

  # Projection that may be projected along with other supported volume types
  @[::K8S::Properties(
    config_map: {key: "configMap", accessor: "config_map", kind: "::K8S::Api::Core::V1::ConfigMapProjection", nilable: true, default: nil, read_only: false, description: "information about the configMap data to project", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    downward_api: {key: "downwardAPI", accessor: "downward_api", kind: "::K8S::Api::Core::V1::DownwardAPIProjection", nilable: true, default: nil, read_only: false, description: "information about the downwardAPI data to project", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret: {key: "secret", accessor: "secret", kind: "::K8S::Api::Core::V1::SecretProjection", nilable: true, default: nil, read_only: false, description: "information about the secret data to project", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    service_account_token: {key: "serviceAccountToken", accessor: "service_account_token", kind: "::K8S::Api::Core::V1::ServiceAccountTokenProjection", nilable: true, default: nil, read_only: false, description: "information about the serviceAccountToken data to project", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::VolumeProjection < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::VolumeProjection
    k8s_object_accessor("configMap", config_map : ::K8S::Api::Core::V1::ConfigMapProjection, true, false, "information about the configMap data to project")
    k8s_object_accessor("downwardAPI", downward_api : ::K8S::Api::Core::V1::DownwardAPIProjection, true, false, "information about the downwardAPI data to project")
    k8s_object_accessor("secret", secret : ::K8S::Api::Core::V1::SecretProjection, true, false, "information about the secret data to project")
    k8s_object_accessor("serviceAccountToken", service_account_token : ::K8S::Api::Core::V1::ServiceAccountTokenProjection, true, false, "information about the serviceAccountToken data to project")

    def initialize(*, config_map : ::K8S::Api::Core::V1::ConfigMapProjection? = nil, downward_api : ::K8S::Api::Core::V1::DownwardAPIProjection? = nil, secret : ::K8S::Api::Core::V1::SecretProjection? = nil, service_account_token : ::K8S::Api::Core::V1::ServiceAccountTokenProjection? = nil)
      super()
      self.["configMap"] = config_map
      self.["downwardAPI"] = downward_api
      self.["secret"] = secret
      self.["serviceAccountToken"] = service_account_token
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "configMap", accessor: "config_map", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapProjection},
      {key: "downwardAPI", accessor: "downward_api", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::DownwardAPIProjection},
      {key: "secret", accessor: "secret", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretProjection},
      {key: "serviceAccountToken", accessor: "service_account_token", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ServiceAccountTokenProjection},
    ])
  end
end
