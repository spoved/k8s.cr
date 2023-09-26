# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Overhead",
  namespace: "::K8S::Api::Node::V1",
  properties: [

    {name: "pod_fixed", kind: Union(::Hash(String, ::Int32 | ::String)), key: "podFixed", nilable: true, read_only: false, description: "podFixed represents the fixed resource overhead associated with running a pod."},

  ]
)
