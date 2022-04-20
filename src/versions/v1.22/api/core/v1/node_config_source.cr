# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./config_map_node_config_source"

::K8S::Kubernetes::Resource.define_object("NodeConfigSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "config_map", kind: ::K8S::Api::Core::V1::ConfigMapNodeConfigSource, key: "configMap", nilable: true, read_only: false, description: "ConfigMap is a reference to a Node's ConfigMap"},

  ]
)
