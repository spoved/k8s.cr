# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EnvFromSource represents the source of a set of ConfigMaps
  class Api::Core::V1::EnvFromSource
    # The ConfigMap to select from
    property config_map_ref : Api::Core::V1::ConfigMapEnvSource | Nil

    # An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    property prefix : String | Nil

    # The Secret to select from
    property secret_ref : Api::Core::V1::SecretEnvSource | Nil

    ::YAML.mapping({
      config_map_ref: {type: Api::Core::V1::ConfigMapEnvSource, nilable: true, key: "configMapRef", getter: false, setter: false},
      prefix:         {type: String, nilable: true, key: "prefix", getter: false, setter: false},
      secret_ref:     {type: Api::Core::V1::SecretEnvSource, nilable: true, key: "secretRef", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      config_map_ref: {type: Api::Core::V1::ConfigMapEnvSource, nilable: true, key: "configMapRef", getter: false, setter: false},
      prefix:         {type: String, nilable: true, key: "prefix", getter: false, setter: false},
      secret_ref:     {type: Api::Core::V1::SecretEnvSource, nilable: true, key: "secretRef", getter: false, setter: false},
    }, true)

    def initialize(*, @config_map_ref : Api::Core::V1::ConfigMapEnvSource | Nil = nil, @prefix : String | Nil = nil, @secret_ref : Api::Core::V1::SecretEnvSource | Nil = nil)
    end
  end
end
