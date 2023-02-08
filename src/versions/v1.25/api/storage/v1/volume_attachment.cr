# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./volume_attachment_spec"
require "./volume_attachment_status"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "VolumeAttachment",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Storage::V1::VolumeAttachmentSpec, key: "spec", nilable: false, read_only: false, description: "Specification of the desired [attach/detach volume behavior. Populated by the Kubernetes system.](attach/detach volume behavior. Populated by the Kubernetes system.)"},
    {name: "status", kind: ::K8S::Api::Storage::V1::VolumeAttachmentStatus, key: "status", nilable: true, read_only: false, description: "Status of the VolumeAttachment request. Populated by the entity completing the attach or detach operation, i.e. the external-attacher."},

  ],
  description: "VolumeAttachment captures the intent to attach or detach the specified volume to/from the specified node.\n\nVolumeAttachment objects are non-namespaced.",
  versions: [{group: "storage.k8s.io", kind: "VolumeAttachment", version: "v1"}],
)
