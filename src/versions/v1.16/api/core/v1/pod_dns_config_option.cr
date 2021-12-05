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
    include ::YAML::Serializable

    # Required.
    property name : String | Nil

    property value : String | Nil

    def initialize(*, @name : String | Nil = nil, @value : String | Nil = nil)
    end
  end
end
