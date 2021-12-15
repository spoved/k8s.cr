# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  @[::K8S::Properties(
    running: {type: Api::Core::V1::ContainerStateRunning, nilable: true, key: "running", getter: false, setter: false},
    terminated: {type: Api::Core::V1::ContainerStateTerminated, nilable: true, key: "terminated", getter: false, setter: false},
    waiting: {type: Api::Core::V1::ContainerStateWaiting, nilable: true, key: "waiting", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerState
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Details about a running container
    @[::JSON::Field(key: "running", emit_null: false)]
    @[::YAML::Field(key: "running", emit_null: false)]
    property running : Api::Core::V1::ContainerStateRunning | Nil

    # Details about a terminated container
    @[::JSON::Field(key: "terminated", emit_null: false)]
    @[::YAML::Field(key: "terminated", emit_null: false)]
    property terminated : Api::Core::V1::ContainerStateTerminated | Nil

    # Details about a waiting container
    @[::JSON::Field(key: "waiting", emit_null: false)]
    @[::YAML::Field(key: "waiting", emit_null: false)]
    property waiting : Api::Core::V1::ContainerStateWaiting | Nil

    def initialize(*, @running : Api::Core::V1::ContainerStateRunning | Nil = nil, @terminated : Api::Core::V1::ContainerStateTerminated | Nil = nil, @waiting : Api::Core::V1::ContainerStateWaiting | Nil = nil)
    end
  end
end
