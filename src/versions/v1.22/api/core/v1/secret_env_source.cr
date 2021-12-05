# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SecretEnvSource selects a Secret to populate the environment variables with.
  #
  # The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    optional: {type: Bool, nilable: true, key: "optional", getter: false, setter: false},
  )]
  class Api::Core::V1::SecretEnvSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String | Nil

    # Specify whether the Secret must be defined
    property optional : Bool | Nil

    def initialize(*, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
