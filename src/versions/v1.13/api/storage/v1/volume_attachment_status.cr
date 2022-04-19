# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./volume_error"

::K8S::Kubernetes::Resource.define_object("VolumeAttachmentStatus",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "attach_error", kind: ::K8S::Api::Storage::V1::VolumeError, key: "attachError", nilable: true, read_only: false, description: "The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher."},
    {name: "attached", kind: ::Bool, key: "attached", nilable: false, read_only: false, description: "Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher."},
    {name: "attachment_metadata", kind: ::Hash(String, String), key: "attachmentMetadata", nilable: true, read_only: false, description: "Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher."},
    {name: "detach_error", kind: ::K8S::Api::Storage::V1::VolumeError, key: "detachError", nilable: true, read_only: false, description: "The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher."},

  ]
)
