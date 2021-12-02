# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
  @[::K8S::GroupVersionKind(group: "", kind: "Service", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/services", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/services", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/services/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/services/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/services/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/services/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/services/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/services/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/services/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  class Api::Core::V1::Service < ::K8S::Kubernetes::Resource
    getter api_version : String = "v1"
    getter kind : String = "Service"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the behavior of a service. [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::ServiceSpec | Nil

    # Most recently observed status of the service. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property status : Api::Core::V1::ServiceStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Service", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Service", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Core::V1::ServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Core::V1::ServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::ServiceSpec | Nil = nil, @status : Api::Core::V1::ServiceStatus | Nil = nil)
    end
  end

  module Resources::V1
    alias Service = ::K8S::Api::Core::V1::Service
  end
end
