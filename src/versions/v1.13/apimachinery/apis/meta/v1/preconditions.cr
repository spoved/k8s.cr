# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  @[::K8S::Properties(
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Preconditions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Specifies the target UID.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    def initialize(*, @uid : String | Nil = nil)
    end
  end
end
