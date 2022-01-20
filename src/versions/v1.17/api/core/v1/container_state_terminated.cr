# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStateTerminated; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStateTerminated`.
  module Types::Api::Core::V1::ContainerStateTerminated
    alias ValueType = String | Int32 | ::Time | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Container's ID in the format 'docker://<container_id>'
    abstract def container_id : String?
    # :ditto:
    abstract def container_id! : String
    # :ditto:
    abstract def container_id? : String?
    # :ditto:
    abstract def container_id=(value : String?)
    # Exit status from the last termination of the container
    abstract def exit_code : Int32
    # :ditto:
    abstract def exit_code! : Int32
    # :ditto:
    abstract def exit_code? : Int32?
    # :ditto:
    abstract def exit_code=(value : Int32)
    # Time at which the container last terminated
    abstract def finished_at : ::Time?
    # :ditto:
    abstract def finished_at! : ::Time
    # :ditto:
    abstract def finished_at? : ::Time?
    # :ditto:
    abstract def finished_at=(value : ::Time?)
    # Message regarding the last termination of the container
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String?)
    # (brief) reason from the last termination of the container
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
    # Signal from the last termination of the container
    abstract def signal : Int32?
    # :ditto:
    abstract def signal! : Int32
    # :ditto:
    abstract def signal? : Int32?
    # :ditto:
    abstract def signal=(value : Int32?)
    # Time at which previous execution of the container started
    abstract def started_at : ::Time?
    # :ditto:
    abstract def started_at! : ::Time
    # :ditto:
    abstract def started_at? : ::Time?
    # :ditto:
    abstract def started_at=(value : ::Time?)
  end

  # ContainerStateTerminated is a terminated state of a container.
  @[::K8S::Properties(
    container_id: {key: "containerID", accessor: "container_id", kind: "String", nilable: true, default: nil, read_only: false, description: "Container's ID in the format 'docker://<container_id>'", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    exit_code: {key: "exitCode", accessor: "exit_code", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Exit status from the last termination of the container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    finished_at: {key: "finishedAt", accessor: "finished_at", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time at which the container last terminated", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    message: {key: "message", accessor: "message", kind: "String", nilable: true, default: nil, read_only: false, description: "Message regarding the last termination of the container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "(brief) reason from the last termination of the container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    signal: {key: "signal", accessor: "signal", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Signal from the last termination of the container", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    started_at: {key: "startedAt", accessor: "started_at", kind: "::Time", nilable: true, default: nil, read_only: false, description: "Time at which previous execution of the container started", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ContainerStateTerminated < ::K8S::Types::Api::Core::V1::ContainerStateTerminated::Instance
    include ::K8S::Types::Api::Core::V1::ContainerStateTerminated
    include ::K8S::Kubernetes::Object

    # Container's ID in the format 'docker://<container_id>'
    def container_id : String?
      self.["containerID"].as(String?)
    end

    # :ditto:
    def container_id! : String
      self.["containerID"].as(String?).not_nil!
    end

    # :ditto:
    def container_id? : String?
      self.["containerID"]?.as(String?)
    end

    # :ditto:
    def container_id=(value : String?)
      self.["containerID"] = value
    end

    # Exit status from the last termination of the container
    def exit_code : Int32
      self.["exitCode"].as(Int32)
    end

    # :ditto:
    def exit_code! : Int32
      self.["exitCode"].as(Int32).not_nil!
    end

    # :ditto:
    def exit_code? : Int32?
      self.["exitCode"]?.as(Int32?)
    end

    # :ditto:
    def exit_code=(value : Int32)
      self.["exitCode"] = value
    end

    # Time at which the container last terminated
    def finished_at : ::Time?
      self.["finishedAt"].as(::Time?)
    end

    # :ditto:
    def finished_at! : ::Time
      self.["finishedAt"].as(::Time?).not_nil!
    end

    # :ditto:
    def finished_at? : ::Time?
      self.["finishedAt"]?.as(::Time?)
    end

    # :ditto:
    def finished_at=(value : ::Time?)
      self.["finishedAt"] = value
    end

    # Message regarding the last termination of the container
    def message : String?
      self.["message"].as(String?)
    end

    # :ditto:
    def message! : String
      self.["message"].as(String?).not_nil!
    end

    # :ditto:
    def message? : String?
      self.["message"]?.as(String?)
    end

    # :ditto:
    def message=(value : String?)
      self.["message"] = value
    end

    # (brief) reason from the last termination of the container
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    # Signal from the last termination of the container
    def signal : Int32?
      self.["signal"].as(Int32?)
    end

    # :ditto:
    def signal! : Int32
      self.["signal"].as(Int32?).not_nil!
    end

    # :ditto:
    def signal? : Int32?
      self.["signal"]?.as(Int32?)
    end

    # :ditto:
    def signal=(value : Int32?)
      self.["signal"] = value
    end

    # Time at which previous execution of the container started
    def started_at : ::Time?
      self.["startedAt"].as(::Time?)
    end

    # :ditto:
    def started_at! : ::Time
      self.["startedAt"].as(::Time?).not_nil!
    end

    # :ditto:
    def started_at? : ::Time?
      self.["startedAt"]?.as(::Time?)
    end

    # :ditto:
    def started_at=(value : ::Time?)
      self.["startedAt"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "containerID", accessor: "container_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "exitCode", accessor: "exit_code", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "finishedAt", accessor: "finished_at", nilable: true, read_only: false, default: nil, kind: ::Time },
        { key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
        { key: "signal", accessor: "signal", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "startedAt", accessor: "started_at", nilable: true, read_only: false, default: nil, kind: ::Time },
      ])
end
  end
end
