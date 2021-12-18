# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceAccountList is a list of ServiceAccount objects
  @[::K8S::GroupVersionKind(group: "", kind: "ServiceAccountList", version: "v1", full: "io.k8s.api.core.v1.ServiceAccountList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    items: {type: Array(Api::Core::V1::ServiceAccount), nilable: false, key: "items", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/serviceaccounts", toplevel: false,
    args: [{name: "automount_service_account_token", type: Bool | Nil, default: nil},
           {name: "image_pull_secrets", type: Array(Api::Core::V1::LocalObjectReference) | Nil, default: nil},
           {name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta | Nil, default: nil},
           {name: "secrets", type: Array(Api::Core::V1::ObjectReference) | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/serviceaccounts", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/serviceaccounts", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/serviceaccounts", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  class Api::Core::V1::ServiceAccountList < ::K8S::Kubernetes::ResourceList(Api::Core::V1::ServiceAccount)
    include ::K8S::Kubernetes::Resource::List
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "v1"
    getter kind : String = "List"

    def initialize(*, @items : Array(Api::Core::V1::ServiceAccount), @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
