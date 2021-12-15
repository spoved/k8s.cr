# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
  @[::K8S::Properties(
    common_encoding_version: {type: String, nilable: true, key: "commonEncodingVersion", getter: false, setter: false},
    conditions: {type: Array(Api::Apiserverinternal::V1alpha1::StorageVersionCondition), nilable: true, key: "conditions", getter: false, setter: false},
    storage_versions: {type: Array(Api::Apiserverinternal::V1alpha1::ServerStorageVersion), nilable: true, key: "storageVersions", getter: false, setter: false},
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersionStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    @[::JSON::Field(key: "commonEncodingVersion", emit_null: false)]
    @[::YAML::Field(key: "commonEncodingVersion", emit_null: false)]
    property common_encoding_version : String | Nil

    # The latest available observations of the storageVersion's state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Apiserverinternal::V1alpha1::StorageVersionCondition) | Nil

    # The reported versions per API server instance.
    @[::JSON::Field(key: "storageVersions", emit_null: false)]
    @[::YAML::Field(key: "storageVersions", emit_null: false)]
    property storage_versions : Array(Api::Apiserverinternal::V1alpha1::ServerStorageVersion) | Nil

    def initialize(*, @common_encoding_version : String | Nil = nil, @conditions : Array | Nil = nil, @storage_versions : Array | Nil = nil)
    end
  end
end
