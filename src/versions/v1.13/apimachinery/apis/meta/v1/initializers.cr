# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Initializers tracks the progress of initialization.
  @[::K8S::Properties(
    pending: {type: Array(Apimachinery::Apis::Meta::V1::Initializer), nilable: false, key: "pending", getter: false, setter: false},
    result: {type: Apimachinery::Apis::Meta::V1::Status, nilable: true, key: "result", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Initializers
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
    @[::JSON::Field(key: "pending", emit_null: true)]
    @[::YAML::Field(key: "pending", emit_null: true)]
    property pending : Array(Apimachinery::Apis::Meta::V1::Initializer)

    # If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
    @[::JSON::Field(key: "result", emit_null: false)]
    @[::YAML::Field(key: "result", emit_null: false)]
    property result : Apimachinery::Apis::Meta::V1::Status | Nil

    def initialize(*, @pending : Array, @result : Apimachinery::Apis::Meta::V1::Status | Nil = nil)
    end
  end
end
