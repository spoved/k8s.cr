# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "CustomResourceDefinition", version: "v1beta1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition < ::K8S::Kubernetes::Resource
    getter api_version : String = "apiextensions/v1beta1"
    getter kind : String = "CustomResourceDefinition"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec describes how the user wants the resources to appear
    property spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec

    # Status indicates the actual state of the CustomResourceDefinition
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiextensions/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CustomResourceDefinition", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus | Nil = nil)
    end
  end

  module Resources::Apiextensions::V1beta1
    alias CustomResourceDefinition = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinition
  end
end
