# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # VolumeAttachment captures the intent to attach or detach the specified volume [to/from the specified node.](to/from the specified node.)
  #
  # VolumeAttachment objects are non-namespaced.
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "VolumeAttachment", version: "v1alpha1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments", toplevel: true,
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
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments", toplevel: true,
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
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/storage.k8s.io/v1alpha1/volumeattachments/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Storage::V1alpha1::VolumeAttachment < ::K8S::Kubernetes::Resource
    getter api_version : String = "storage/v1alpha1"
    getter kind : String = "VolumeAttachment"
    # Standard object metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)
    property spec : Api::Storage::V1alpha1::VolumeAttachmentSpec

    # Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher.
    property status : Api::Storage::V1alpha1::VolumeAttachmentStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "storage/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "VolumeAttachment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Storage::V1alpha1::VolumeAttachmentSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Storage::V1alpha1::VolumeAttachmentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "storage/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "VolumeAttachment", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Storage::V1alpha1::VolumeAttachmentSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Storage::V1alpha1::VolumeAttachmentStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Storage::V1alpha1::VolumeAttachmentSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Storage::V1alpha1::VolumeAttachmentStatus | Nil = nil)
    end
  end

  module Resources::Storage::V1alpha1
    alias VolumeAttachment = ::K8S::Api::Storage::V1alpha1::VolumeAttachment
  end
end
