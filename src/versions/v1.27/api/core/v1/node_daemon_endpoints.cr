# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./daemon_endpoint"

::K8S::Kubernetes::Resource.define_object("NodeDaemonEndpoints",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "kubelet_endpoint", kind: ::K8S::Api::Core::V1::DaemonEndpoint, key: "kubeletEndpoint", nilable: true, read_only: false, description: "Endpoint on which Kubelet is listening."},

  ]
)
