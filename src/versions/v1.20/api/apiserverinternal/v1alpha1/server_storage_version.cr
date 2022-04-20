# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServerStorageVersion",
  namespace: "::K8S::Api::Apiserverinternal::V1alpha1",
  properties: [

    {name: "api_server_id", kind: String, key: "apiServerID", nilable: true, read_only: false, description: "The ID of the reporting API server."},
    {name: "decodable_versions", kind: ::Set(String), key: "decodableVersions", nilable: true, read_only: false, description: "The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions."},
    {name: "encoding_version", kind: String, key: "encodingVersion", nilable: true, read_only: false, description: "The API server encodes the object to this version when persisting it in the backend (e.g., etcd)."},

  ]
)
