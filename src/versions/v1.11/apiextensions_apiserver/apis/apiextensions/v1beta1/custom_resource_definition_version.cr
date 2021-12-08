# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    served: {type: Bool, nilable: false, key: "served", getter: false, setter: false},
    storage: {type: Bool, nilable: false, key: "storage", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[::JSON::Field(key: "served", emit_null: true)]
    @[::YAML::Field(key: "served", emit_null: true)]
    property served : Bool

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    @[::JSON::Field(key: "storage", emit_null: true)]
    @[::YAML::Field(key: "storage", emit_null: true)]
    property storage : Bool

    def initialize(*, @name : String, @served : Bool, @storage : Bool)
    end
  end
end
