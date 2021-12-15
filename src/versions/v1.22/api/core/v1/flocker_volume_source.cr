# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
  @[::K8S::Properties(
    dataset_name: {type: String, nilable: true, key: "datasetName", getter: false, setter: false},
    dataset_uuid: {type: String, nilable: true, key: "datasetUUID", getter: false, setter: false},
  )]
  class Api::Core::V1::FlockerVolumeSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
    @[::JSON::Field(key: "datasetName", emit_null: false)]
    @[::YAML::Field(key: "datasetName", emit_null: false)]
    property dataset_name : String | Nil

    # UUID of the dataset. This is unique identifier of a Flocker dataset
    @[::JSON::Field(key: "datasetUUID", emit_null: false)]
    @[::YAML::Field(key: "datasetUUID", emit_null: false)]
    property dataset_uuid : String | Nil

    def initialize(*, @dataset_name : String | Nil = nil, @dataset_uuid : String | Nil = nil)
    end
  end
end
