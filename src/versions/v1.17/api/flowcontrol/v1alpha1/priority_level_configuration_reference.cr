# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `name` is the name of the priority level configuration being referenced Required.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    def initialize(*, @name : String)
    end
  end
end
