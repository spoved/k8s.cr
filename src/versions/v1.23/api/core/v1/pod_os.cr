# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodOS defines the OS parameters of a pod.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Core::V1::PodOS
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: [https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null](https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null)
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
