# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

::K8S::Kubernetes::Resource.define_object("Handler",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "exec", kind: ::K8S::Api::Core::V1::ExecAction, key: "exec", nilable: true, read_only: false, description: "One and only one of the following should be specified. Exec specifies the action to take."},
    {name: "http_get", kind: ::K8S::Api::Core::V1::HTTPGetAction, key: "httpGet", nilable: true, read_only: false, description: "HTTPGet specifies the http request to perform."},
    {name: "tcp_socket", kind: ::K8S::Api::Core::V1::TCPSocketAction, key: "tcpSocket", nilable: true, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"},

  ]
)
