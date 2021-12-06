# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
  )]
  class Api::Core::V1::SecretReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is unique within a namespace to reference a secret resource.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Namespace defines the space within which the secret name must be unique.
    @[::JSON::Field(key: "namespace", emit_null: false)]
    @[::YAML::Field(key: "namespace", emit_null: false)]
    property namespace : String | Nil

    def initialize(*, @name : String | Nil = nil, @namespace : String | Nil = nil)
    end
  end
end
