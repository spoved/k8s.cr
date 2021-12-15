# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
  @[::K8S::Properties(
    when_deleted: {type: String, nilable: true, key: "whenDeleted", getter: false, setter: false},
    when_scaled: {type: String, nilable: true, key: "whenScaled", getter: false, setter: false},
  )]
  class Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
    @[::JSON::Field(key: "whenDeleted", emit_null: false)]
    @[::YAML::Field(key: "whenDeleted", emit_null: false)]
    property when_deleted : String | Nil

    # WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
    @[::JSON::Field(key: "whenScaled", emit_null: false)]
    @[::YAML::Field(key: "whenScaled", emit_null: false)]
    property when_scaled : String | Nil

    def initialize(*, @when_deleted : String | Nil = nil, @when_scaled : String | Nil = nil)
    end
  end
end
