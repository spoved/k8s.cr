# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Projection that may be projected along with other supported volume types
  class Api::Core::V1::VolumeProjection
    # information about the configMap data to project
    property config_map : Api::Core::V1::ConfigMapProjection | Nil

    # information about the downwardAPI data to project
    property downward_api : Api::Core::V1::DownwardAPIProjection | Nil

    # information about the secret data to project
    property secret : Api::Core::V1::SecretProjection | Nil

    # information about the serviceAccountToken data to project
    property service_account_token : Api::Core::V1::ServiceAccountTokenProjection | Nil

    ::YAML.mapping({
      config_map:            {type: Api::Core::V1::ConfigMapProjection, nilable: true, key: "configMap", getter: false, setter: false},
      downward_api:          {type: Api::Core::V1::DownwardAPIProjection, nilable: true, key: "downwardAPI", getter: false, setter: false},
      secret:                {type: Api::Core::V1::SecretProjection, nilable: true, key: "secret", getter: false, setter: false},
      service_account_token: {type: Api::Core::V1::ServiceAccountTokenProjection, nilable: true, key: "serviceAccountToken", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      config_map:            {type: Api::Core::V1::ConfigMapProjection, nilable: true, key: "configMap", getter: false, setter: false},
      downward_api:          {type: Api::Core::V1::DownwardAPIProjection, nilable: true, key: "downwardAPI", getter: false, setter: false},
      secret:                {type: Api::Core::V1::SecretProjection, nilable: true, key: "secret", getter: false, setter: false},
      service_account_token: {type: Api::Core::V1::ServiceAccountTokenProjection, nilable: true, key: "serviceAccountToken", getter: false, setter: false},
    }, true)

    def initialize(*, @config_map : Api::Core::V1::ConfigMapProjection | Nil = nil, @downward_api : Api::Core::V1::DownwardAPIProjection | Nil = nil, @secret : Api::Core::V1::SecretProjection | Nil = nil, @service_account_token : Api::Core::V1::ServiceAccountTokenProjection | Nil = nil)
    end
  end
end
