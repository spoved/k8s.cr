# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Selects a key from a ConfigMap.
  @[::K8S::Properties(
    key: {type: String, nilable: false, key: "key", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
  )]
  class Api::Core::V1::ConfigMapKeySelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The key to select.
    property key : String

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String | Nil

    # Specify whether the ConfigMap or its key must be defined
    property optional : Bool | Nil

    def initialize(*, @key : String, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
