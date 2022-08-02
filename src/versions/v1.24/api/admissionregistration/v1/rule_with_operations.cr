# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("RuleWithOperations",
  namespace: "::K8S::Api::Admissionregistration::V1",
  properties: [

    {name: "api_groups", kind: ::Array(String), key: "apiGroups", nilable: true, read_only: false, description: "APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required."},
    {name: "api_versions", kind: ::Array(String), key: "apiVersions", nilable: true, read_only: false, description: "APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required."},
    {name: "operations", kind: ::Array(String), key: "operations", nilable: true, read_only: false, description: "Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE, CONNECT or * for all of those operations and any future admission operations that are added. If '*' is present, the length of the slice must be one. Required."},
    {name: "resources", kind: ::Array(String), key: "resources", nilable: true, read_only: false, description: "Resources is a list of resources this rule applies to.\n\nFor example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)\n\nIf wildcard is present, the validation rule will ensure resources do not overlap with each other.\n\nDepending on the enclosing object, subresources might not be allowed. Required."},
    {name: "scope", kind: String, key: "scope", nilable: true, read_only: false, description: "scope specifies the scope of this rule. Valid values are \"Cluster\", \"Namespaced\", and \"*\" \"Cluster\" means that only cluster-scoped resources will match this rule. Namespace API objects are cluster-scoped. \"Namespaced\" means that only namespaced resources will match this rule. \"*\" means that there are no scope restrictions. Subresources match the scope of their parent resource. Default is \"*\"."},

  ]
)
