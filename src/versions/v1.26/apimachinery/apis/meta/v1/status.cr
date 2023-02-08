# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./status_details"
require "./list_meta"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Status",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "code", kind: Int32, key: "code", nilable: true, read_only: false, description: "Suggested HTTP return code for this status, 0 if not set."},
    {name: "details", kind: ::K8S::Apimachinery::Apis::Meta::V1::StatusDetails, key: "details", nilable: true, read_only: false, description: "Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type."},
    {name: "message", kind: String, key: "message", nilable: true, read_only: false, description: "A human-readable description of the status of this operation."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it."},
    {name: "status", kind: String, key: "status", nilable: true, read_only: false, description: "Status of the operation. One of: \"Success\" or \"Failure\". More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "Status is a return value for calls that don't return other objects.",
  versions: [{group: "", kind: "Status", version: "v1"}, {group: "resource.k8s.io", kind: "Status", version: "v1alpha1"}],
)
alias K8S::Resource::V1alpha1::Status = ::K8S::Apimachinery::Apis::Meta::V1::Status
