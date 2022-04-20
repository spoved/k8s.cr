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
    {name: "success_threshold", kind: Int32, key: "successThreshold", nilable: true, read_only: false, description: "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."},
    {name: "tcp_socket", kind: ::K8S::Api::Core::V1::TCPSocketAction, key: "tcpSocket", nilable: true, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"},
    {name: "termination_grace_period_seconds", kind: Int32, key: "terminationGracePeriodSeconds", nilable: true, read_only: false, description: "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset."},
    {name: "timeout_seconds", kind: Int32, key: "timeoutSeconds", nilable: true, read_only: false, description: "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)"},

  ]
)
