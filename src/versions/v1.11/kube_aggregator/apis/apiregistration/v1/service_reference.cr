# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceReference",
  namespace: "::K8S::KubeAggregator::Apis::Apiregistration::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name is the name of the service"},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace is the namespace of the service"},

  ]
)
