# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # A list of StorageVersions.
  @[::K8S::GroupVersionKind(group: "internal.apiserver.k8s.io", kind: "StorageVersionList", version: "v1alpha1", full: "io.k8s.api.apiserverinternal.v1alpha1.StorageVersionList")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    items: {type: Array(Api::Apiserverinternal::V1alpha1::StorageVersion), nilable: false, key: "items", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: "metadata", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions", toplevel: false,
    args: [{name: "spec", type: Api::Apiserverinternal::V1alpha1::StorageVersionSpec},
           {name: "status", type: Api::Apiserverinternal::V1alpha1::StorageVersionStatus},
           {name: "metadata", type: Apimachinery::Apis::Meta::V1::ObjectMeta | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "field_validation", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions", toplevel: true,
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
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions", toplevel: true,
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
           {name: "timeout_seconds", type: Int32 | Nil, default: nil}]
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersionList < ::K8S::Kubernetes::ResourceList(Api::Apiserverinternal::V1alpha1::StorageVersion)
    include ::K8S::Kubernetes::Resource::List
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "apiserverinternal/v1alpha1"
    getter kind : String = "List"

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
