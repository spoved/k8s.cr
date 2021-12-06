# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  @[::K8S::Properties(
    resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Preconditions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Specifies the target ResourceVersion
    @[::JSON::Field(key: "resourceVersion", emit_null: false)]
    @[::YAML::Field(key: "resourceVersion", emit_null: false)]
    property resource_version : String | Nil

    # Specifies the target UID.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    def initialize(*, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
