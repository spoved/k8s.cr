# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ContainerStateTerminated; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ContainerStateTerminated`.
  module Types::Api::Core::V1::ContainerStateTerminated
    # Container's ID in the format 'docker://<container_id>'
    abstract def container_id : String?
    # :ditto:
    abstract def container_id! : String
    # :ditto:
    abstract def container_id? : String?
    # :ditto:
    abstract def container_id=(value : String)
    # Exit status from the last termination of the container
    abstract def exit_code : Int32?
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
    abstract def finished_at=(value : ::Time)
    # Message regarding the last termination of the container
    abstract def message : String?
    # :ditto:
    abstract def message! : String
    # :ditto:
    abstract def message? : String?
    # :ditto:
    abstract def message=(value : String)
    # (brief) reason from the last termination of the container
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
    # Signal from the last termination of the container
    abstract def signal : Int32?
    # :ditto:
    abstract def signal! : Int32
    # :ditto:
    abstract def signal? : Int32?
    # :ditto:
    abstract def signal=(value : Int32)
    # Time at which previous execution of the container started
    abstract def started_at : ::Time?
    # :ditto:
    abstract def started_at! : ::Time
    # :ditto:
    abstract def started_at? : ::Time?
    # :ditto:
    abstract def started_at=(value : ::Time)
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
  class Api::Core::V1::ContainerStateTerminated < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ContainerStateTerminated
    k8s_object_accessor("containerID", container_id : String, true, false, "Container's ID in the format 'docker://<container_id>'")
    k8s_object_accessor("exitCode", exit_code : Int32, false, false, "Exit status from the last termination of the container")
    k8s_object_accessor("finishedAt", finished_at : ::Time, true, false, "Time at which the container last terminated")
    k8s_object_accessor("message", message : String, true, false, "Message regarding the last termination of the container")
    k8s_object_accessor("reason", reason : String, true, false, "(brief) reason from the last termination of the container")
    k8s_object_accessor("signal", signal : Int32, true, false, "Signal from the last termination of the container")
    k8s_object_accessor("startedAt", started_at : ::Time, true, false, "Time at which previous execution of the container started")

    def initialize(*, container_id : String? = nil, exit_code : Int32? = nil, finished_at : ::Time? = nil, message : String? = nil, reason : String? = nil, signal : Int32? = nil, started_at : ::Time? = nil)
      super()
      self.["containerID"] = container_id
      self.["exitCode"] = exit_code
      self.["finishedAt"] = finished_at
      self.["message"] = message
      self.["reason"] = reason
      self.["signal"] = signal
      self.["startedAt"] = started_at
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "containerID", accessor: "container_id", nilable: true, read_only: false, default: nil, kind: String},
      {key: "exitCode", accessor: "exit_code", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "finishedAt", accessor: "finished_at", nilable: true, read_only: false, default: nil, kind: ::Time},
      {key: "message", accessor: "message", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
      {key: "signal", accessor: "signal", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "startedAt", accessor: "started_at", nilable: true, read_only: false, default: nil, kind: ::Time},
    ])
  end
end
