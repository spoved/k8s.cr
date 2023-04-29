# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ParamRef",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "Name of the resource being referenced."},
    {name: "namespace", kind: String, key: "namespace", nilable: true, read_only: false, description: "Namespace of the referenced resource. Should be empty for the cluster-scoped resources"},

  ]
)
