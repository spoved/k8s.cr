# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./volume_attachment"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1alpha1", "VolumeAttachmentList",
  namespace: "::K8S::Api::Storage::V1alpha1",
  list: true,
  list_kind: K8S::Api::Storage::V1alpha1::VolumeAttachment,
  description: "VolumeAttachmentList is a collection of VolumeAttachment objects.",
)
