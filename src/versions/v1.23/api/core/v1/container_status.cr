# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerStatus contains details for the current status of this container.
  @[::K8S::Properties(
    container_id: {type: String, nilable: true, key: "containerID", getter: false, setter: false},
    image: {type: String, nilable: false, key: "image", getter: false, setter: false},
    image_id: {type: String, nilable: false, key: "imageID", getter: false, setter: false},
    last_state: {type: Api::Core::V1::ContainerState, nilable: true, key: "lastState", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    ready: {type: Bool, nilable: false, key: "ready", getter: false, setter: false},
    restart_count: {type: Int32, nilable: false, key: "restartCount", getter: false, setter: false},
    started: {type: Bool, nilable: true, key: "started", getter: false, setter: false},
    state: {type: Api::Core::V1::ContainerState, nilable: true, key: "state", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container's ID in the format 'docker://<container_id>'.
    @[::JSON::Field(key: "containerID", emit_null: false)]
    @[::YAML::Field(key: "containerID", emit_null: false)]
    property container_id : String | Nil

    # The image the container is running. More info: [https://kubernetes.io/docs/concepts/containers/images.](https://kubernetes.io/docs/concepts/containers/images.)
    @[::JSON::Field(key: "image", emit_null: true)]
    @[::YAML::Field(key: "image", emit_null: true)]
    property image : String

    # ImageID of the container's image.
    @[::JSON::Field(key: "imageID", emit_null: true)]
    @[::YAML::Field(key: "imageID", emit_null: true)]
    property image_id : String

    # Details about the container's last termination condition.
    @[::JSON::Field(key: "lastState", emit_null: false)]
    @[::YAML::Field(key: "lastState", emit_null: false)]
    property last_state : Api::Core::V1::ContainerState | Nil

    # This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Specifies whether the container has passed its readiness probe.
    @[::JSON::Field(key: "ready", emit_null: true)]
    @[::YAML::Field(key: "ready", emit_null: true)]
    property ready : Bool

    # The number of times the container has been restarted.
    @[::JSON::Field(key: "restartCount", emit_null: true)]
    @[::YAML::Field(key: "restartCount", emit_null: true)]
    property restart_count : Int32

    # Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
    @[::JSON::Field(key: "started", emit_null: false)]
    @[::YAML::Field(key: "started", emit_null: false)]
    property started : Bool | Nil

    # Details about the container's current condition.
    @[::JSON::Field(key: "state", emit_null: false)]
    @[::YAML::Field(key: "state", emit_null: false)]
    property state : Api::Core::V1::ContainerState | Nil

    def initialize(*, @image : String, @image_id : String, @name : String, @ready : Bool, @restart_count : Int32, @container_id : String | Nil = nil, @last_state : Api::Core::V1::ContainerState | Nil = nil, @started : Bool | Nil = nil, @state : Api::Core::V1::ContainerState | Nil = nil)
    end
  end
end
