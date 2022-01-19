# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ExecAction; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ExecAction`.
  module Types::Api::Core::V1::ExecAction
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as [[live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.)]([live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.))
    abstract def command : ::Array(String)?
    # :ditto:
    abstract def command! : ::Array(String)
    # :ditto:
    abstract def command? : ::Array(String)?
    # :ditto:
    abstract def command=(value : ::Array(String)?)
  end

  # ExecAction describes a "run in container" action.
  @[::K8S::Properties(
    command: {key: "command", accessor: "command", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as [live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.)"},
  )]
  class Api::Core::V1::ExecAction < ::K8S::Types::Api::Core::V1::ExecAction::Instance
    include ::K8S::Types::Api::Core::V1::ExecAction
    include ::K8S::Kubernetes::Object

    # Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as [[live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.)]([live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.))
    def command : ::Array(String)?
      self.["command"].as(::Array(String)?)
    end

    # :ditto:
    def command! : ::Array(String)
      self.["command"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def command? : ::Array(String)?
      self.["command"]?.as(::Array(String)?)
    end

    # :ditto:
    def command=(value : ::Array(String)?)
      self.["command"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "command", accessor: "command", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
