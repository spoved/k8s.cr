# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
  @[::K8S::Properties(
    config_map: {type: Api::Core::V1::ConfigMapNodeConfigSource, nilable: true, key: "configMap", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeConfigSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ConfigMap is a reference to a Node's ConfigMap
    @[::JSON::Field(key: "configMap")]
    @[::YAML::Field(key: "configMap")]
    property config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil

    def initialize(*, @config_map : Api::Core::V1::ConfigMapNodeConfigSource | Nil = nil)
    end
  end
end
