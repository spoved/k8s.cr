# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./status_cause"

::K8S::Kubernetes::Resource.define_object("StatusDetails",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "causes", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::StatusCause), key: "causes", nilable: true, read_only: false, description: "The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes."},
    {name: "group", kind: String, key: "group", nilable: true, read_only: false, description: "The group attribute of the resource associated with the status StatusReason."},
    {name: "kind", kind: String, key: "kind", nilable: true, read_only: false, description: "The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)"},
    {name: "name", kind: String, key: "name", nilable: true, read_only: false, description: "The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described)."},
    {name: "retry_after_seconds", kind: Int32, key: "retryAfterSeconds", nilable: true, read_only: false, description: "If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action."},
    {name: "uid", kind: String, key: "uid", nilable: true, read_only: false, description: "UID of the resource. (when there is a single resource which can be described). More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)"},

  ]
)
