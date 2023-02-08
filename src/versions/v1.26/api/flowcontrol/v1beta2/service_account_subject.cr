# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServiceAccountSubject",
  namespace: "::K8S::Api::Flowcontrol::V1beta2",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "`name` is the name of matching ServiceAccount objects, or \"*\" to match regardless of name. Required."},
    {name: "namespace", kind: String, key: "namespace", nilable: false, read_only: false, description: "`namespace` is the namespace of matching ServiceAccount objects. Required."},

  ]
)
