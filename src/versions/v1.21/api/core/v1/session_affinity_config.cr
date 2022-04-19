# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./client_ip_config"

::K8S::Kubernetes::Resource.define_object("SessionAffinityConfig",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "client_ip", kind: ::K8S::Api::Core::V1::ClientIPConfig, key: "clientIP", nilable: true, read_only: false, description: "clientIP contains the configurations of Client IP based session affinity."},

  ]
)
