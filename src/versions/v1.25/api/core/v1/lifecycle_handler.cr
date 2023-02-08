# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

::K8S::Kubernetes::Resource.define_object("LifecycleHandler",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "exec", kind: ::K8S::Api::Core::V1::ExecAction, key: "exec", nilable: true, read_only: false, description: "Exec specifies the action to take."},
    {name: "http_get", kind: ::K8S::Api::Core::V1::HTTPGetAction, key: "httpGet", nilable: true, read_only: false, description: "HTTPGet specifies the http request to perform."},
    {name: "tcp_socket", kind: ::K8S::Api::Core::V1::TCPSocketAction, key: "tcpSocket", nilable: true, read_only: false, description: "Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified."},

  ]
)
