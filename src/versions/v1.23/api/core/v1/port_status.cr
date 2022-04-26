# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("PortStatus",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "error", kind: String, key: "error", nilable: true, read_only: false, description: "Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use\n  CamelCase names\n- cloud provider specific error values must have names that comply with the\n  format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)"},
    {name: "port", kind: Int32, key: "port", nilable: false, read_only: false, description: "Port is the port number of the service port of which status is recorded here"},
    {name: "protocol", kind: String, key: "protocol", nilable: false, read_only: false, description: "Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"\n\n"},

  ]
)
