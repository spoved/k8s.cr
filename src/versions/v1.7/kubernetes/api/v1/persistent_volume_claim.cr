# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PersistentVolumeClaim is a user's request for and claim to a persistent volume
  @[::K8S::GroupVersionKind(group: "", kind: "PersistentVolumeClaim", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/api/v1/namespaces/{namespace}/persistentvolumeclaims/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class Kubernetes::Api::V1::PersistentVolumeClaim < ::K8S::Kubernetes::Resource
    getter api_version : String = "v1"
    getter kind : String = "PersistentVolumeClaim"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired characteristics of a volume requested by a pod author. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)
    property spec : Kubernetes::Api::V1::PersistentVolumeClaimSpec | Nil

    # Status represents the current [information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)
    property status : Kubernetes::Api::V1::PersistentVolumeClaimStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolumeClaim", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "PersistentVolumeClaim", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeClaimSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeClaimStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PersistentVolumeClaimSpec | Nil = nil, @status : Kubernetes::Api::V1::PersistentVolumeClaimStatus | Nil = nil)
    end
  end

  module Resources::V1
    alias PersistentVolumeClaim = ::K8S::Kubernetes::Api::V1::PersistentVolumeClaim
  end
end
