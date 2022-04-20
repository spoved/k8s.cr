# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./storage_version_condition"
require "./server_storage_version"

::K8S::Kubernetes::Resource.define_object("StorageVersionStatus",
  namespace: "::K8S::Api::Apiserverinternal::V1alpha1",
  properties: [

    {name: "common_encoding_version", kind: String, key: "commonEncodingVersion", nilable: true, read_only: false, description: "If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality."},
    {name: "conditions", kind: ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition), key: "conditions", nilable: true, read_only: false, description: "The latest available observations of the storageVersion's state."},
    {name: "storage_versions", kind: ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion), key: "storageVersions", nilable: true, read_only: false, description: "The reported versions per API server instance."},

  ]
)
