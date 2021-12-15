# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodDNSConfigOption defines DNS resolver options of a pod.
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    value: {type: String, nilable: true, key: "value", getter: false, setter: false},
  )]
  class Api::Core::V1::PodDNSConfigOption
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    @[::JSON::Field(key: "value", emit_null: false)]
    @[::YAML::Field(key: "value", emit_null: false)]
    property value : String | Nil

    def initialize(*, @name : String | Nil = nil, @value : String | Nil = nil)
    end
  end
end
