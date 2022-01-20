# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersionStatus; end

require "./storage_version_condition"
require "./server_storage_version"

module K8S
  # Namespace holding the types for `Api::Apiserverinternal::V1alpha1::StorageVersionStatus`.
  module Types::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
    alias ValueType = String | ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition) | ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    abstract def common_encoding_version : String?
    # :ditto:
    abstract def common_encoding_version! : String
    # :ditto:
    abstract def common_encoding_version? : String?
    # :ditto:
    abstract def common_encoding_version=(value : String?)
    # The latest available observations of the storageVersion's state.
    abstract def conditions : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?)
    # The reported versions per API server instance.
    abstract def storage_versions : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?
    # :ditto:
    abstract def storage_versions! : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)
    # :ditto:
    abstract def storage_versions? : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?
    # :ditto:
    abstract def storage_versions=(value : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?)
  end

  # API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
  @[::K8S::Properties(
    common_encoding_version: {key: "commonEncodingVersion", accessor: "common_encoding_version", kind: "String", nilable: true, default: nil, read_only: false, description: "If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)", nilable: true, default: nil, read_only: false, description: "The latest available observations of the storageVersion's state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["type"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
    storage_versions: {key: "storageVersions", accessor: "storage_versions", kind: "::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)", nilable: true, default: nil, read_only: false, description: "The reported versions per API server instance.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: ["apiServerID"], x_kubernetes_list_type: "map", x_kubernetes_map_type: nil},
  )]
  class Api::Apiserverinternal::V1alpha1::StorageVersionStatus < ::K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersionStatus::Instance
    include ::K8S::Types::Api::Apiserverinternal::V1alpha1::StorageVersionStatus
    include ::K8S::Kubernetes::Object

    # If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    def common_encoding_version : String?
      self.["commonEncodingVersion"].as(String?)
    end

    # :ditto:
    def common_encoding_version! : String
      self.["commonEncodingVersion"].as(String?).not_nil!
    end

    # :ditto:
    def common_encoding_version? : String?
      self.["commonEncodingVersion"]?.as(String?)
    end

    # :ditto:
    def common_encoding_version=(value : String?)
      self.["commonEncodingVersion"] = value
    end

    # The latest available observations of the storageVersion's state.
    def conditions : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)
      self.["conditions"].as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition)?)
      self.["conditions"] = value
    end

    # The reported versions per API server instance.
    def storage_versions : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?
      self.["storageVersions"].as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?)
    end

    # :ditto:
    def storage_versions! : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)
      self.["storageVersions"].as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?).not_nil!
    end

    # :ditto:
    def storage_versions? : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?
      self.["storageVersions"]?.as(::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?)
    end

    # :ditto:
    def storage_versions=(value : ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion)?)
      self.["storageVersions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "commonEncodingVersion", accessor: "common_encoding_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionCondition) },
        { key: "storageVersions", accessor: "storage_versions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Apiserverinternal::V1alpha1::ServerStorageVersion) },
      ])
end
  end
end
