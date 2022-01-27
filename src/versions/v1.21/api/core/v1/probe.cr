# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Probe; end

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

module K8S
  # Namespace holding the types for `Api::Core::V1::Probe`.
  module Types::Api::Core::V1::Probe
    # One and only one of the following should be specified. Exec specifies the action to take.
    abstract def exec : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec! : ::K8S::Api::Core::V1::ExecAction
    # :ditto:
    abstract def exec? : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec=(value : ::K8S::Api::Core::V1::ExecAction)
    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    abstract def failure_threshold : Int32?
    # :ditto:
    abstract def failure_threshold! : Int32
    # :ditto:
    abstract def failure_threshold? : Int32?
    # :ditto:
    abstract def failure_threshold=(value : Int32)
    # HTTPGet specifies the http request to perform.
    abstract def http_get : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get! : ::K8S::Api::Core::V1::HTTPGetAction
    # :ditto:
    abstract def http_get? : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get=(value : ::K8S::Api::Core::V1::HTTPGetAction)
    # Number of seconds after the container has started before liveness probes are initiated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def initial_delay_seconds : Int32?
    # :ditto:
    abstract def initial_delay_seconds! : Int32
    # :ditto:
    abstract def initial_delay_seconds? : Int32?
    # :ditto:
    abstract def initial_delay_seconds=(value : Int32)
    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    abstract def period_seconds : Int32?
    # :ditto:
    abstract def period_seconds! : Int32
    # :ditto:
    abstract def period_seconds? : Int32?
    # :ditto:
    abstract def period_seconds=(value : Int32)
    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    abstract def success_threshold : Int32?
    # :ditto:
    abstract def success_threshold! : Int32
    # :ditto:
    abstract def success_threshold? : Int32?
    # :ditto:
    abstract def success_threshold=(value : Int32)
    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    abstract def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
    # :ditto:
    abstract def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction)
    # Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate.
    abstract def termination_grace_period_seconds : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds! : Int32
    # :ditto:
    abstract def termination_grace_period_seconds? : Int32?
    # :ditto:
    abstract def termination_grace_period_seconds=(value : Int32)
    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def timeout_seconds : Int32?
    # :ditto:
    abstract def timeout_seconds! : Int32
    # :ditto:
    abstract def timeout_seconds? : Int32?
    # :ditto:
    abstract def timeout_seconds=(value : Int32)
  end

  # Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  @[::K8S::Properties(
    exec: {key: "exec", accessor: "exec", kind: "::K8S::Api::Core::V1::ExecAction", nilable: true, default: nil, read_only: false, description: "One and only one of the following should be specified. Exec specifies the action to take.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    failure_threshold: {key: "failureThreshold", accessor: "failure_threshold", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    http_get: {key: "httpGet", accessor: "http_get", kind: "::K8S::Api::Core::V1::HTTPGetAction", nilable: true, default: nil, read_only: false, description: "HTTPGet specifies the http request to perform.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    initial_delay_seconds: {key: "initialDelaySeconds", accessor: "initial_delay_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    period_seconds: {key: "periodSeconds", accessor: "period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    success_threshold: {key: "successThreshold", accessor: "success_threshold", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tcp_socket: {key: "tcpSocket", accessor: "tcp_socket", kind: "::K8S::Api::Core::V1::TCPSocketAction", nilable: true, default: nil, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    termination_grace_period_seconds: {key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    timeout_seconds: {key: "timeoutSeconds", accessor: "timeout_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Probe < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Probe
    k8s_object_accessor("exec", exec : ::K8S::Api::Core::V1::ExecAction, true, false, "One and only one of the following should be specified. Exec specifies the action to take.")
    k8s_object_accessor("failureThreshold", failure_threshold : Int32, true, false, "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.")
    k8s_object_accessor("httpGet", http_get : ::K8S::Api::Core::V1::HTTPGetAction, true, false, "HTTPGet specifies the http request to perform.")
    k8s_object_accessor("initialDelaySeconds", initial_delay_seconds : Int32, true, false, "Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)")
    k8s_object_accessor("periodSeconds", period_seconds : Int32, true, false, "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.")
    k8s_object_accessor("successThreshold", success_threshold : Int32, true, false, "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.")
    k8s_object_accessor("tcpSocket", tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction, true, false, "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported")
    k8s_object_accessor("terminationGracePeriodSeconds", termination_grace_period_seconds : Int32, true, false, "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is an alpha field and requires enabling ProbeTerminationGracePeriod feature gate.")
    k8s_object_accessor("timeoutSeconds", timeout_seconds : Int32, true, false, "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)")

    def initialize(*, exec : ::K8S::Api::Core::V1::ExecAction? = nil, failure_threshold : Int32? = nil, http_get : ::K8S::Api::Core::V1::HTTPGetAction? = nil, initial_delay_seconds : Int32? = nil, period_seconds : Int32? = nil, success_threshold : Int32? = nil, tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction? = nil, termination_grace_period_seconds : Int32? = nil, timeout_seconds : Int32? = nil)
      super()
      self.["exec"] = exec
      self.["failureThreshold"] = failure_threshold
      self.["httpGet"] = http_get
      self.["initialDelaySeconds"] = initial_delay_seconds
      self.["periodSeconds"] = period_seconds
      self.["successThreshold"] = success_threshold
      self.["tcpSocket"] = tcp_socket
      self.["terminationGracePeriodSeconds"] = termination_grace_period_seconds
      self.["timeoutSeconds"] = timeout_seconds
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "exec", accessor: "exec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ExecAction},
      {key: "failureThreshold", accessor: "failure_threshold", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "httpGet", accessor: "http_get", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HTTPGetAction},
      {key: "initialDelaySeconds", accessor: "initial_delay_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "periodSeconds", accessor: "period_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "successThreshold", accessor: "success_threshold", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "tcpSocket", accessor: "tcp_socket", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TCPSocketAction},
      {key: "terminationGracePeriodSeconds", accessor: "termination_grace_period_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
      {key: "timeoutSeconds", accessor: "timeout_seconds", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
