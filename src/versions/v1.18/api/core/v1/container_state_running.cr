# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerStateRunning is a running state of a container.
  @[::K8S::Properties(
    started_at: {type: Time, nilable: true, key: "startedAt", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerStateRunning
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Time at which the container was last (re-)started
    @[::JSON::Field(key: "startedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "startedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    property started_at : Time | Nil

    def initialize(*, @started_at : Time | Nil = nil)
    end
  end
end
