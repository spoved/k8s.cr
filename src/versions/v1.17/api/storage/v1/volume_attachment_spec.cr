# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  @[::K8S::Properties(
    attacher: {type: String, nilable: false, key: "attacher", getter: false, setter: false},
    node_name: {type: String, nilable: false, key: "nodeName", getter: false, setter: false},
    source: {type: Api::Storage::V1::VolumeAttachmentSource, nilable: false, key: "source", getter: false, setter: false},
  )]
  class Api::Storage::V1::VolumeAttachmentSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    @[::JSON::Field(key: "attacher", emit_null: true)]
    @[::YAML::Field(key: "attacher", emit_null: true)]
    property attacher : String

    # The node that the volume should be attached to.
    @[::JSON::Field(key: "nodeName", emit_null: true)]
    @[::YAML::Field(key: "nodeName", emit_null: true)]
    property node_name : String

    # Source represents the volume that should be attached.
    @[::JSON::Field(key: "source", emit_null: true)]
    @[::YAML::Field(key: "source", emit_null: true)]
    property source : Api::Storage::V1::VolumeAttachmentSource

    def initialize(*, @attacher : String, @node_name : String, @source : Api::Storage::V1::VolumeAttachmentSource)
    end
  end
end
