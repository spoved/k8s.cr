# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy; end

module K8S
  # Namespace holding the types for `Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy`.
  module Types::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
    abstract def when_deleted : String?
    # :ditto:
    abstract def when_deleted! : String
    # :ditto:
    abstract def when_deleted? : String?
    # :ditto:
    abstract def when_deleted=(value : String?)
    # WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
    abstract def when_scaled : String?
    # :ditto:
    abstract def when_scaled! : String
    # :ditto:
    abstract def when_scaled? : String?
    # :ditto:
    abstract def when_scaled=(value : String?)
  end

  # StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
  @[::K8S::Properties(
    when_deleted: {key: "whenDeleted", accessor: "when_deleted", kind: "String", nilable: true, default: nil, read_only: false, description: "WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted."},
    when_scaled: {key: "whenScaled", accessor: "when_scaled", kind: "String", nilable: true, default: nil, read_only: false, description: "WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted."},
  )]
  class Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy < ::K8S::Types::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy::Instance
    include ::K8S::Types::Api::Apps::V1::StatefulSetPersistentVolumeClaimRetentionPolicy
    include ::K8S::Kubernetes::Object

    # WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
    def when_deleted : String?
      self.["whenDeleted"].as(String?)
    end

    # :ditto:
    def when_deleted! : String
      self.["whenDeleted"].as(String?).not_nil!
    end

    # :ditto:
    def when_deleted? : String?
      self.["whenDeleted"]?.as(String?)
    end

    # :ditto:
    def when_deleted=(value : String?)
      self.["whenDeleted"] = value
    end

    # WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
    def when_scaled : String?
      self.["whenScaled"].as(String?)
    end

    # :ditto:
    def when_scaled! : String
      self.["whenScaled"].as(String?).not_nil!
    end

    # :ditto:
    def when_scaled? : String?
      self.["whenScaled"]?.as(String?)
    end

    # :ditto:
    def when_scaled=(value : String?)
      self.["whenScaled"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "whenDeleted", accessor: "when_deleted", nilable: true, read_only: false, default: nil, kind: String },
        { key: "whenScaled", accessor: "when_scaled", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
