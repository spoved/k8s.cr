# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # SessionAffinityConfig represents the configurations of session affinity.
  class Api::Core::V1::SessionAffinityConfig
    include ::JSON::Serializable
    include ::YAML::Serializable

    # clientIP contains the configurations of Client IP based session affinity.
    property client_ip : Api::Core::V1::ClientIPConfig | Nil

    ::YAML.mapping({
      client_ip: {type: Api::Core::V1::ClientIPConfig, nilable: true, key: "clientIP", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      client_ip: {type: Api::Core::V1::ClientIPConfig, nilable: true, key: "clientIP", getter: false, setter: false},
    }, true)

    def initialize(*, @client_ip : Api::Core::V1::ClientIPConfig | Nil = nil)
    end
  end
end
