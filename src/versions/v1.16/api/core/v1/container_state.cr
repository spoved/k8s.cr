# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerState; end

require "./container_state_running"
require "./container_state_terminated"
require "./container_state_waiting"

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerState`.
  module Types::Api::Core::V1::ContainerState
    alias ValueType = ::K8S::Api::Core::V1::ContainerStateRunning | ::K8S::Api::Core::V1::ContainerStateTerminated | ::K8S::Api::Core::V1::ContainerStateWaiting | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Details about a running container
    abstract def running : ::K8S::Api::Core::V1::ContainerStateRunning?
    # :ditto:
    abstract def running! : ::K8S::Api::Core::V1::ContainerStateRunning
    # :ditto:
    abstract def running? : ::K8S::Api::Core::V1::ContainerStateRunning?
    # :ditto:
    abstract def running=(value : ::K8S::Api::Core::V1::ContainerStateRunning?)
    # Details about a terminated container
    abstract def terminated : ::K8S::Api::Core::V1::ContainerStateTerminated?
    # :ditto:
    abstract def terminated! : ::K8S::Api::Core::V1::ContainerStateTerminated
    # :ditto:
    abstract def terminated? : ::K8S::Api::Core::V1::ContainerStateTerminated?
    # :ditto:
    abstract def terminated=(value : ::K8S::Api::Core::V1::ContainerStateTerminated?)
    # Details about a waiting container
    abstract def waiting : ::K8S::Api::Core::V1::ContainerStateWaiting?
    # :ditto:
    abstract def waiting! : ::K8S::Api::Core::V1::ContainerStateWaiting
    # :ditto:
    abstract def waiting? : ::K8S::Api::Core::V1::ContainerStateWaiting?
    # :ditto:
    abstract def waiting=(value : ::K8S::Api::Core::V1::ContainerStateWaiting?)
  end

  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  @[::K8S::Properties(
    running: {key: "running", accessor: "running", kind: "::K8S::Api::Core::V1::ContainerStateRunning", nilable: true, default: nil, read_only: false, description: "Details about a running container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    terminated: {key: "terminated", accessor: "terminated", kind: "::K8S::Api::Core::V1::ContainerStateTerminated", nilable: true, default: nil, read_only: false, description: "Details about a terminated container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    waiting: {key: "waiting", accessor: "waiting", kind: "::K8S::Api::Core::V1::ContainerStateWaiting", nilable: true, default: nil, read_only: false, description: "Details about a waiting container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerState < ::K8S::Types::Api::Core::V1::ContainerState::Instance
    include ::K8S::Types::Api::Core::V1::ContainerState
    include ::K8S::Kubernetes::Object

    # Details about a running container
    def running : ::K8S::Api::Core::V1::ContainerStateRunning?
      self.["running"].as(::K8S::Api::Core::V1::ContainerStateRunning?)
    end

    # :ditto:
    def running! : ::K8S::Api::Core::V1::ContainerStateRunning
      self.["running"].as(::K8S::Api::Core::V1::ContainerStateRunning?).not_nil!
    end

    # :ditto:
    def running? : ::K8S::Api::Core::V1::ContainerStateRunning?
      self.["running"]?.as(::K8S::Api::Core::V1::ContainerStateRunning?)
    end

    # :ditto:
    def running=(value : ::K8S::Api::Core::V1::ContainerStateRunning?)
      self.["running"] = value
    end

    # Details about a terminated container
    def terminated : ::K8S::Api::Core::V1::ContainerStateTerminated?
      self.["terminated"].as(::K8S::Api::Core::V1::ContainerStateTerminated?)
    end

    # :ditto:
    def terminated! : ::K8S::Api::Core::V1::ContainerStateTerminated
      self.["terminated"].as(::K8S::Api::Core::V1::ContainerStateTerminated?).not_nil!
    end

    # :ditto:
    def terminated? : ::K8S::Api::Core::V1::ContainerStateTerminated?
      self.["terminated"]?.as(::K8S::Api::Core::V1::ContainerStateTerminated?)
    end

    # :ditto:
    def terminated=(value : ::K8S::Api::Core::V1::ContainerStateTerminated?)
      self.["terminated"] = value
    end

    # Details about a waiting container
    def waiting : ::K8S::Api::Core::V1::ContainerStateWaiting?
      self.["waiting"].as(::K8S::Api::Core::V1::ContainerStateWaiting?)
    end

    # :ditto:
    def waiting! : ::K8S::Api::Core::V1::ContainerStateWaiting
      self.["waiting"].as(::K8S::Api::Core::V1::ContainerStateWaiting?).not_nil!
    end

    # :ditto:
    def waiting? : ::K8S::Api::Core::V1::ContainerStateWaiting?
      self.["waiting"]?.as(::K8S::Api::Core::V1::ContainerStateWaiting?)
    end

    # :ditto:
    def waiting=(value : ::K8S::Api::Core::V1::ContainerStateWaiting?)
      self.["waiting"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "running", accessor: "running", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerStateRunning },
        { key: "terminated", accessor: "terminated", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerStateTerminated },
        { key: "waiting", accessor: "waiting", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ContainerStateWaiting },
      ])
end
  end
end
