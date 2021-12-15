# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerStateWaiting is a waiting state of a container.
  @[::K8S::Properties(
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerStateWaiting
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Message regarding why the container is not yet running.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # (brief) reason the container is not yet running.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    def initialize(*, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
