# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Initializer is information about an initializer that has not yet completed.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::Initializer
    include ::JSON::Serializable
    include ::YAML::Serializable

    # name of the process that is responsible for initializing this object.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
