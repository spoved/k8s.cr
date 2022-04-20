# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

::K8S::Kubernetes::Resource.define_object("Probe",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "exec", kind: ::K8S::Api::Core::V1::ExecAction, key: "exec", nilable: true, read_only: false, description: "One and only one of the following should be specified. Exec specifies the action to take."},
    {name: "failure_threshold", kind: Int32, key: "failureThreshold", nilable: true, read_only: false, description: "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."},
    {name: "http_get", kind: ::K8S::Api::Core::V1::HTTPGetAction, key: "httpGet", nilable: true, read_only: false, description: "HTTPGet specifies the http request to perform."},
    {name: "initial_delay_seconds", kind: Int32, key: "initialDelaySeconds", nilable: true, read_only: false, description: "Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)"},
    {name: "period_seconds", kind: Int32, key: "periodSeconds", nilable: true, read_only: false, description: "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."},
    {name: "success_threshold", kind: Int32, key: "successThreshold", nilable: true, read_only: false, description: "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1."},
    {name: "tcp_socket", kind: ::K8S::Api::Core::V1::TCPSocketAction, key: "tcpSocket", nilable: true, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"},
    {name: "timeout_seconds", kind: Int32, key: "timeoutSeconds", nilable: true, read_only: false, description: "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)"},

  ]
)
