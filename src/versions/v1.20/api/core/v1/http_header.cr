# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HTTPHeader describes a custom header to be used in HTTP probes
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    value: {type: String, nilable: false, key: "value", getter: false, setter: false},
  )]
  class Api::Core::V1::HTTPHeader
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The header field name
    property name : String

    # The header field value
    property value : String

    def initialize(*, @name : String, @value : String)
    end
  end
end
