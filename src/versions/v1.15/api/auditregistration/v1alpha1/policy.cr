# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Policy",
  namespace: "::K8S::Api::Auditregistration::V1alpha1",
  properties: [

    {name: "level", kind: String, key: "level", nilable: false, read_only: false, description: "The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required"},
    {name: "stages", kind: ::Array(String), key: "stages", nilable: true, read_only: false, description: "Stages is a list of stages for which events are created."},

  ]
)
