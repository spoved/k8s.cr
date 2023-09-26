# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ParamKind",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "api_version", kind: String, key: "apiVersion", nilable: true, read_only: false, description: "APIVersion is the API group version the resources belong to. In format of [\"group/version\". Required.](\"group/version\". Required.)"},
    {name: "kind", kind: String, key: "kind", nilable: true, read_only: false, description: "Kind is the API kind the resources belong to. Required."},

  ]
)
