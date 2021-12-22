# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ExecAction describes a "run in container" action.
  @[::K8S::Properties(
    command: {type: Array(String), nilable: true, key: "command", getter: false, setter: false},
  )]
  class Api::Core::V1::ExecAction
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as [live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.)
    @[::JSON::Field(key: "command", emit_null: false)]
    @[::YAML::Field(key: "command", emit_null: false)]
    property command : Array(String) | Nil

    def initialize(*, @command : Array(String) | Nil = nil)
    end
  end
end