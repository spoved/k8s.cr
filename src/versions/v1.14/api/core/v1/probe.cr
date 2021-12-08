# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  @[::K8S::Properties(
    exec: {type: Api::Core::V1::ExecAction, nilable: true, key: "exec", getter: false, setter: false},
    failure_threshold: {type: Int32, nilable: true, key: "failureThreshold", getter: false, setter: false},
    http_get: {type: Api::Core::V1::HTTPGetAction, nilable: true, key: "httpGet", getter: false, setter: false},
    initial_delay_seconds: {type: Int32, nilable: true, key: "initialDelaySeconds", getter: false, setter: false},
    period_seconds: {type: Int32, nilable: true, key: "periodSeconds", getter: false, setter: false},
    success_threshold: {type: Int32, nilable: true, key: "successThreshold", getter: false, setter: false},
    tcp_socket: {type: Api::Core::V1::TCPSocketAction, nilable: true, key: "tcpSocket", getter: false, setter: false},
    timeout_seconds: {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
  )]
  class Api::Core::V1::Probe
    include ::JSON::Serializable
    include ::YAML::Serializable

    # One and only one of the following should be specified. Exec specifies the action to take.
    @[::JSON::Field(key: "exec", emit_null: false)]
    @[::YAML::Field(key: "exec", emit_null: false)]
    property exec : Api::Core::V1::ExecAction | Nil

    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    @[::JSON::Field(key: "failureThreshold", emit_null: false)]
    @[::YAML::Field(key: "failureThreshold", emit_null: false)]
    property failure_threshold : Int32 | Nil

    # HTTPGet specifies the http request to perform.
    @[::JSON::Field(key: "httpGet", emit_null: false)]
    @[::YAML::Field(key: "httpGet", emit_null: false)]
    property http_get : Api::Core::V1::HTTPGetAction | Nil

    # Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "initialDelaySeconds", emit_null: false)]
    @[::YAML::Field(key: "initialDelaySeconds", emit_null: false)]
    property initial_delay_seconds : Int32 | Nil

    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    @[::JSON::Field(key: "periodSeconds", emit_null: false)]
    @[::YAML::Field(key: "periodSeconds", emit_null: false)]
    property period_seconds : Int32 | Nil

    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1.
    @[::JSON::Field(key: "successThreshold", emit_null: false)]
    @[::YAML::Field(key: "successThreshold", emit_null: false)]
    property success_threshold : Int32 | Nil

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    @[::JSON::Field(key: "tcpSocket", emit_null: false)]
    @[::YAML::Field(key: "tcpSocket", emit_null: false)]
    property tcp_socket : Api::Core::V1::TCPSocketAction | Nil

    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "timeoutSeconds", emit_null: false)]
    @[::YAML::Field(key: "timeoutSeconds", emit_null: false)]
    property timeout_seconds : Int32 | Nil

    def initialize(*, @exec : Api::Core::V1::ExecAction | Nil = nil, @failure_threshold : Int32 | Nil = nil, @http_get : Api::Core::V1::HTTPGetAction | Nil = nil, @initial_delay_seconds : Int32 | Nil = nil, @period_seconds : Int32 | Nil = nil, @success_threshold : Int32 | Nil = nil, @tcp_socket : Api::Core::V1::TCPSocketAction | Nil = nil, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
