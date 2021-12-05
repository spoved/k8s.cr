# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeAttachmentStatus is the status of a VolumeAttachment request.
  @[::K8S::Properties(
    attach_error: {type: Api::Storage::V1::VolumeError, nilable: true, key: "attachError", getter: false, setter: false},
    attached: {type: Bool, nilable: false, key: "attached", getter: false, setter: false},
    attachment_metadata: {type: Hash(String, String), nilable: true, key: "attachmentMetadata", getter: false, setter: false},
    detach_error: {type: Api::Storage::V1::VolumeError, nilable: true, key: "detachError", getter: false, setter: false},
  )]
  class Api::Storage::V1::VolumeAttachmentStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "attachError")]
    @[::YAML::Field(key: "attachError")]
    property attach_error : Api::Storage::V1::VolumeError | Nil

    # Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    property attached : Bool

    # Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "attachmentMetadata")]
    @[::YAML::Field(key: "attachmentMetadata")]
    property attachment_metadata : Hash(String, String) | Nil

    # The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
    @[::JSON::Field(key: "detachError")]
    @[::YAML::Field(key: "detachError")]
    property detach_error : Api::Storage::V1::VolumeError | Nil

    def initialize(*, @attached : Bool, @attach_error : Api::Storage::V1::VolumeError | Nil = nil, @attachment_metadata : Hash(String, String) | Nil = nil, @detach_error : Api::Storage::V1::VolumeError | Nil = nil)
    end
  end
end
