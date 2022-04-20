# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./config_map_env_source"
require "./secret_env_source"

::K8S::Kubernetes::Resource.define_object("EnvFromSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "config_map_ref", kind: ::K8S::Api::Core::V1::ConfigMapEnvSource, key: "configMapRef", nilable: true, read_only: false, description: "The ConfigMap to select from"},
    {name: "prefix", kind: String, key: "prefix", nilable: true, read_only: false, description: "An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER."},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::SecretEnvSource, key: "secretRef", nilable: true, read_only: false, description: "The Secret to select from"},

  ]
)
