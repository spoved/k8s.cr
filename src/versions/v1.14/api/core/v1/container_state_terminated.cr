# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerStateTerminated is a terminated state of a container.
  @[::K8S::Properties(
    container_id: {type: String, nilable: true, key: "containerID", getter: false, setter: false},
    exit_code: {type: Int32, nilable: false, key: "exitCode", getter: false, setter: false},
    finished_at: {type: Time, nilable: true, key: "finishedAt", getter: false, setter: false},
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
    signal: {type: Int32, nilable: true, key: "signal", getter: false, setter: false},
    started_at: {type: Time, nilable: true, key: "startedAt", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerStateTerminated
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Container's ID in the format 'docker://<container_id>'
    @[::JSON::Field(key: "containerID", emit_null: false)]
    @[::YAML::Field(key: "containerID", emit_null: false)]
    property container_id : String | Nil

    # Exit status from the last termination of the container
    @[::JSON::Field(key: "exitCode", emit_null: true)]
    @[::YAML::Field(key: "exitCode", emit_null: true)]
    property exit_code : Int32

    # Time at which the container last terminated
    @[::JSON::Field(key: "finishedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "finishedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    property finished_at : Time | Nil

    # Message regarding the last termination of the container
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # (brief) reason from the last termination of the container
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    # Signal from the last termination of the container
    @[::JSON::Field(key: "signal", emit_null: false)]
    @[::YAML::Field(key: "signal", emit_null: false)]
    property signal : Int32 | Nil

    # Time at which previous execution of the container started
    @[::JSON::Field(key: "startedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    @[::YAML::Field(key: "startedAt", emit_null: false, converter: K8S::TimeFormat.new)]
    property started_at : Time | Nil

    def initialize(*, @exit_code : Int32, @container_id : String | Nil = nil, @finished_at : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @signal : Int32 | Nil = nil, @started_at : Time | Nil = nil)
    end
  end
end
