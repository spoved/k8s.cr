# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./volume_attachment_source"

::K8S::Kubernetes::Resource.define_object("VolumeAttachmentSpec",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "attacher", kind: String, key: "attacher", nilable: false, read_only: false, description: "attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName()."},
    {name: "node_name", kind: String, key: "nodeName", nilable: false, read_only: false, description: "nodeName represents the node that the volume should be attached to."},
    {name: "source", kind: ::K8S::Api::Storage::V1::VolumeAttachmentSource, key: "source", nilable: false, read_only: false, description: "source represents the volume that should be attached."},

  ]
)
