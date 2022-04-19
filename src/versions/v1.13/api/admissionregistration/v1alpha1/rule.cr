# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("Rule",
  namespace: "::K8S::Api::Admissionregistration::V1alpha1",
  properties: [

    {name: "api_groups", kind: ::Array(String), key: "apiGroups", nilable: true, read_only: false, description: "APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required."},
    {name: "api_versions", kind: ::Array(String), key: "apiVersions", nilable: true, read_only: false, description: "APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required."},
    {name: "resources", kind: ::Array(String), key: "resources", nilable: true, read_only: false, description: "Resources is a list of resources this rule applies to.\n\nFor example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)\n\nIf wildcard is present, the validation rule will ensure resources do not overlap with each other.\n\nDepending on the enclosing object, subresources might not be allowed. Required."},

  ]
)
