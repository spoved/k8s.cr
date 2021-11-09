# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "Role", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Rbac::V1::Role
    getter api_version : String = "rbac.authorization.k8s.io/v1"
    getter kind : String = "Role"
    # Standard object's metadata.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Rules holds all the PolicyRules for this Role
    property rules : Array(Api::Rbac::V1::PolicyRule)

    ::YAML.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "rbac.authorization.k8s.io/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Role", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      rules:       {type: Array(Api::Rbac::V1::PolicyRule), nilable: false, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @rules : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Rbac::V1
    alias Role = ::K8S::Api::Rbac::V1::Role
  end
end
