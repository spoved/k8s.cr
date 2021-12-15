# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceAccountSubject holds detailed information for service-account-kind subject.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::ServiceAccountSubject
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # `namespace` is the namespace of matching ServiceAccount objects. Required.
    @[::JSON::Field(key: "namespace", emit_null: true)]
    @[::YAML::Field(key: "namespace", emit_null: true)]
    property namespace : String

    def initialize(*, @name : String, @namespace : String)
    end
  end
end
