# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./config_map_projection"
require "./downward_api_projection"
require "./secret_projection"
require "./service_account_token_projection"

::K8S::Kubernetes::Resource.define_object("VolumeProjection",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "config_map", kind: ::K8S::Api::Core::V1::ConfigMapProjection, key: "configMap", nilable: true, read_only: false, description: "information about the configMap data to project"},
    {name: "downward_api", kind: ::K8S::Api::Core::V1::DownwardAPIProjection, key: "downwardAPI", nilable: true, read_only: false, description: "information about the downwardAPI data to project"},
    {name: "secret", kind: ::K8S::Api::Core::V1::SecretProjection, key: "secret", nilable: true, read_only: false, description: "information about the secret data to project"},
    {name: "service_account_token", kind: ::K8S::Api::Core::V1::ServiceAccountTokenProjection, key: "serviceAccountToken", nilable: true, read_only: false, description: "information about the serviceAccountToken data to project"},

  ]
)
