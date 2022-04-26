# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ContainerPort",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "container_port", kind: Int32, key: "containerPort", nilable: false, read_only: false, description: "Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536."},
    {name: "host_ip", kind: String, key: "hostIP", nilable: true, read_only: false, description: "What host IP to bind the external port to."},
    {name: "host_port", kind: Int32, key: "hostPort", nilable: true, read_only: false, description: "Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this."},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services."},
    {name: "protocol", kind: String, key: "protocol", nilable: true, read_only: false, description: "Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\".\n\n"},

  ]
)
