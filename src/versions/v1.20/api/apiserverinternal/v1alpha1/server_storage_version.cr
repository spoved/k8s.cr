# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
  class Api::Apiserverinternal::V1alpha1::ServerStorageVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The ID of the reporting API server.
    property api_server_id : String | Nil

    # The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    property decodable_versions : Array(String) | Nil

    # The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    property encoding_version : String | Nil

    ::YAML.mapping({
      api_server_id:      {type: String, nilable: true, key: "apiServerID", getter: false, setter: false},
      decodable_versions: {type: Array(String), nilable: true, key: "decodableVersions", getter: false, setter: false},
      encoding_version:   {type: String, nilable: true, key: "encodingVersion", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_server_id:      {type: String, nilable: true, key: "apiServerID", getter: false, setter: false},
      decodable_versions: {type: Array(String), nilable: true, key: "decodableVersions", getter: false, setter: false},
      encoding_version:   {type: String, nilable: true, key: "encodingVersion", getter: false, setter: false},
    }, true)

    def initialize(*, @api_server_id : String | Nil = nil, @decodable_versions : Array | Nil = nil, @encoding_version : String | Nil = nil)
    end
  end
end
