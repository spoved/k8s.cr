# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SessionAffinityConfig represents the configurations of session affinity.
  @[::K8S::Properties(
    client_ip: {type: Api::Core::V1::ClientIPConfig, nilable: true, key: "clientIP", getter: false, setter: false},
  )]
  class Api::Core::V1::SessionAffinityConfig
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # clientIP contains the configurations of Client IP based session affinity.
    @[::JSON::Field(key: "clientIP", emit_null: false)]
    @[::YAML::Field(key: "clientIP", emit_null: false)]
    property client_ip : Api::Core::V1::ClientIPConfig | Nil

    def initialize(*, @client_ip : Api::Core::V1::ClientIPConfig | Nil = nil)
    end
  end
end
