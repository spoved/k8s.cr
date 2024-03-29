# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ListMeta",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "continue", kind: String, key: "continue", nilable: true, read_only: false, description: "continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response."},
    {name: "resource_version", kind: String, key: "resourceVersion", nilable: true, read_only: false, description: "String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)"},
    {name: "self_link", kind: String, key: "selfLink", nilable: true, read_only: false, description: "selfLink is a URL representing this object. Populated by the system. Read-only."},

  ]
)
