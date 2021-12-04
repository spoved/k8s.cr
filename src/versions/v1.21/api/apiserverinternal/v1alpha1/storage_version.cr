# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  #
  #  Storage version of a specific resource.
  @[::K8S::GroupVersionKind(group: "internal.apiserver.k8s.io", kind: "StorageVersion", version: "v1alpha1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
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
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/internal.apiserver.k8s.io/v1alpha1/storageversions/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersion < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "apiserverinternal/v1alpha1"
    getter kind : String = "StorageVersion"
    # The name is <group>.<resource>.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec is an empty spec. It is here to comply with Kubernetes API style.
    property spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec

    # API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
    property status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus

    ::YAML.mapping({
      api_version: {type: String, default: "apiserverinternal/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StorageVersion", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apiserverinternal::V1alpha1::StorageVersionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apiserverinternal::V1alpha1::StorageVersionStatus, nilable: false, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "apiserverinternal/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "StorageVersion", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Apiserverinternal::V1alpha1::StorageVersionSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Apiserverinternal::V1alpha1::StorageVersionStatus, nilable: false, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec, @status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Apiserverinternal::V1alpha1
    alias StorageVersion = ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersion
  end
end
