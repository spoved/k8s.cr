# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
  @[::K8S::Properties(
    api_server_id: {type: String, nilable: true, key: "apiServerID", getter: false, setter: false},
    decodable_versions: {type: Array(String), nilable: true, key: "decodableVersions", getter: false, setter: false},
    encoding_version: {type: String, nilable: true, key: "encodingVersion", getter: false, setter: false},
  )]
  class Api::Apiserverinternal::V1alpha1::ServerStorageVersion
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The ID of the reporting API server.
    @[::JSON::Field(key: "apiServerID", emit_null: false)]
    @[::YAML::Field(key: "apiServerID", emit_null: false)]
    property api_server_id : String | Nil

    # The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    @[::JSON::Field(key: "decodableVersions", emit_null: false)]
    @[::YAML::Field(key: "decodableVersions", emit_null: false)]
    property decodable_versions : Array(String) | Nil

    # The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    @[::JSON::Field(key: "encodingVersion", emit_null: false)]
    @[::YAML::Field(key: "encodingVersion", emit_null: false)]
    property encoding_version : String | Nil

    def initialize(*, @api_server_id : String | Nil = nil, @decodable_versions : Array | Nil = nil, @encoding_version : String | Nil = nil)
    end
  end
end
