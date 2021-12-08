# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
  @[::K8S::Properties(
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Core::V1::PersistentVolumeClaimSpec, nilable: false, key: "spec", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeClaimTemplate
    include ::JSON::Serializable
    include ::YAML::Serializable

    # May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
    @[::JSON::Field(key: "spec", emit_null: true)]
    @[::YAML::Field(key: "spec", emit_null: true)]
    property spec : Api::Core::V1::PersistentVolumeClaimSpec

    def initialize(*, @spec : Api::Core::V1::PersistentVolumeClaimSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end
end
