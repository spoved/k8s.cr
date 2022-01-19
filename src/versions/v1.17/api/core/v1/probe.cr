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
    alias ValueType = ::K8S::Api::Core::V1::ExecAction | Int32 | ::K8S::Api::Core::V1::HTTPGetAction | ::K8S::Api::Core::V1::TCPSocketAction | Nil
    alias Instance = ::K8S::Object(ValueType)

    # One and only one of the following should be specified. Exec specifies the action to take.
    abstract def exec : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec! : ::K8S::Api::Core::V1::ExecAction
    # :ditto:
    abstract def exec? : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec=(value : ::K8S::Api::Core::V1::ExecAction?)
    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    abstract def failure_threshold : Int32?
    # :ditto:
    abstract def failure_threshold! : Int32
    # :ditto:
    abstract def failure_threshold? : Int32?
    # :ditto:
    abstract def failure_threshold=(value : Int32?)
    # HTTPGet specifies the http request to perform.
    abstract def http_get : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get! : ::K8S::Api::Core::V1::HTTPGetAction
    # :ditto:
    abstract def http_get? : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get=(value : ::K8S::Api::Core::V1::HTTPGetAction?)
    # Number of seconds after the container has started before liveness probes are initiated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def initial_delay_seconds : Int32?
    # :ditto:
    abstract def initial_delay_seconds! : Int32
    # :ditto:
    abstract def initial_delay_seconds? : Int32?
    # :ditto:
    abstract def initial_delay_seconds=(value : Int32?)
    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    abstract def period_seconds : Int32?
    # :ditto:
    abstract def period_seconds! : Int32
    # :ditto:
    abstract def period_seconds? : Int32?
    # :ditto:
    abstract def period_seconds=(value : Int32?)
    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    abstract def success_threshold : Int32?
    # :ditto:
    abstract def success_threshold! : Int32
    # :ditto:
    abstract def success_threshold? : Int32?
    # :ditto:
    abstract def success_threshold=(value : Int32?)
    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    abstract def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
    # :ditto:
    abstract def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction?)
    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    abstract def timeout_seconds : Int32?
    # :ditto:
    abstract def timeout_seconds! : Int32
    # :ditto:
    abstract def timeout_seconds? : Int32?
    # :ditto:
    abstract def timeout_seconds=(value : Int32?)
  end

  # Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  @[::K8S::Properties(
    exec: {key: "exec", accessor: "exec", kind: "::K8S::Api::Core::V1::ExecAction", nilable: true, default: nil, read_only: false, description: "One and only one of the following should be specified. Exec specifies the action to take."},
    failure_threshold: {key: "failureThreshold", accessor: "failure_threshold", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."},
    http_get: {key: "httpGet", accessor: "http_get", kind: "::K8S::Api::Core::V1::HTTPGetAction", nilable: true, default: nil, read_only: false, description: "HTTPGet specifies the http request to perform."},
    initial_delay_seconds: {key: "initialDelaySeconds", accessor: "initial_delay_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)"},
    period_seconds: {key: "periodSeconds", accessor: "period_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."},
    success_threshold: {key: "successThreshold", accessor: "success_threshold", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."},
    tcp_socket: {key: "tcpSocket", accessor: "tcp_socket", kind: "::K8S::Api::Core::V1::TCPSocketAction", nilable: true, default: nil, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"},
    timeout_seconds: {key: "timeoutSeconds", accessor: "timeout_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)"},
  )]
  class Api::Core::V1::Probe < ::K8S::Types::Api::Core::V1::Probe::Instance
    include ::K8S::Types::Api::Core::V1::Probe
    include ::K8S::Kubernetes::Object

    # One and only one of the following should be specified. Exec specifies the action to take.
    def exec : ::K8S::Api::Core::V1::ExecAction?
      self.["exec"].as(::K8S::Api::Core::V1::ExecAction?)
    end

    # :ditto:
    def exec! : ::K8S::Api::Core::V1::ExecAction
      self.["exec"].as(::K8S::Api::Core::V1::ExecAction?).not_nil!
    end

    # :ditto:
    def exec? : ::K8S::Api::Core::V1::ExecAction?
      self.["exec"]?.as(::K8S::Api::Core::V1::ExecAction?)
    end

    # :ditto:
    def exec=(value : ::K8S::Api::Core::V1::ExecAction?)
      self.["exec"] = value
    end

    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    def failure_threshold : Int32?
      self.["failureThreshold"].as(Int32?)
    end

    # :ditto:
    def failure_threshold! : Int32
      self.["failureThreshold"].as(Int32?).not_nil!
    end

    # :ditto:
    def failure_threshold? : Int32?
      self.["failureThreshold"]?.as(Int32?)
    end

    # :ditto:
    def failure_threshold=(value : Int32?)
      self.["failureThreshold"] = value
    end

    # HTTPGet specifies the http request to perform.
    def http_get : ::K8S::Api::Core::V1::HTTPGetAction?
      self.["httpGet"].as(::K8S::Api::Core::V1::HTTPGetAction?)
    end

    # :ditto:
    def http_get! : ::K8S::Api::Core::V1::HTTPGetAction
      self.["httpGet"].as(::K8S::Api::Core::V1::HTTPGetAction?).not_nil!
    end

    # :ditto:
    def http_get? : ::K8S::Api::Core::V1::HTTPGetAction?
      self.["httpGet"]?.as(::K8S::Api::Core::V1::HTTPGetAction?)
    end

    # :ditto:
    def http_get=(value : ::K8S::Api::Core::V1::HTTPGetAction?)
      self.["httpGet"] = value
    end

    # Number of seconds after the container has started before liveness probes are initiated. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    def initial_delay_seconds : Int32?
      self.["initialDelaySeconds"].as(Int32?)
    end

    # :ditto:
    def initial_delay_seconds! : Int32
      self.["initialDelaySeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def initial_delay_seconds? : Int32?
      self.["initialDelaySeconds"]?.as(Int32?)
    end

    # :ditto:
    def initial_delay_seconds=(value : Int32?)
      self.["initialDelaySeconds"] = value
    end

    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    def period_seconds : Int32?
      self.["periodSeconds"].as(Int32?)
    end

    # :ditto:
    def period_seconds! : Int32
      self.["periodSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def period_seconds? : Int32?
      self.["periodSeconds"]?.as(Int32?)
    end

    # :ditto:
    def period_seconds=(value : Int32?)
      self.["periodSeconds"] = value
    end

    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    def success_threshold : Int32?
      self.["successThreshold"].as(Int32?)
    end

    # :ditto:
    def success_threshold! : Int32
      self.["successThreshold"].as(Int32?).not_nil!
    end

    # :ditto:
    def success_threshold? : Int32?
      self.["successThreshold"]?.as(Int32?)
    end

    # :ditto:
    def success_threshold=(value : Int32?)
      self.["successThreshold"] = value
    end

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
      self.["tcpSocket"].as(::K8S::Api::Core::V1::TCPSocketAction?)
    end

    # :ditto:
    def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
      self.["tcpSocket"].as(::K8S::Api::Core::V1::TCPSocketAction?).not_nil!
    end

    # :ditto:
    def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
      self.["tcpSocket"]?.as(::K8S::Api::Core::V1::TCPSocketAction?)
    end

    # :ditto:
    def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction?)
      self.["tcpSocket"] = value
    end

    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [[https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes))
    def timeout_seconds : Int32?
      self.["timeoutSeconds"].as(Int32?)
    end

    # :ditto:
    def timeout_seconds! : Int32
      self.["timeoutSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def timeout_seconds? : Int32?
      self.["timeoutSeconds"]?.as(Int32?)
    end

    # :ditto:
    def timeout_seconds=(value : Int32?)
      self.["timeoutSeconds"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "exec", accessor: "exec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ExecAction },
        { key: "failureThreshold", accessor: "failure_threshold", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "httpGet", accessor: "http_get", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HTTPGetAction },
        { key: "initialDelaySeconds", accessor: "initial_delay_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "periodSeconds", accessor: "period_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "successThreshold", accessor: "success_threshold", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "tcpSocket", accessor: "tcp_socket", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TCPSocketAction },
        { key: "timeoutSeconds", accessor: "timeout_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
