# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apiserverinternal::V1alpha1::ServerStorageVersion; end

module K8S
  # Namespace holding the types for `Api::Apiserverinternal::V1alpha1::ServerStorageVersion`.
  module Types::Api::Apiserverinternal::V1alpha1::ServerStorageVersion
    alias ValueType = String | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The ID of the reporting API server.
    abstract def api_server_id : String?
    # :ditto:
    abstract def api_server_id! : String
    # :ditto:
    abstract def api_server_id? : String?
    # :ditto:
    abstract def api_server_id=(value : String?)
    # The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    abstract def decodable_versions : ::Array(String)?
    # :ditto:
    abstract def decodable_versions! : ::Array(String)
    # :ditto:
    abstract def decodable_versions? : ::Array(String)?
    # :ditto:
    abstract def decodable_versions=(value : ::Array(String)?)
    # The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    abstract def encoding_version : String?
    # :ditto:
    abstract def encoding_version! : String
    # :ditto:
    abstract def encoding_version? : String?
    # :ditto:
    abstract def encoding_version=(value : String?)
  end

  # An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
  @[::K8S::Properties(
    api_server_id: {key: "apiServerID", accessor: "api_server_id", kind: "String", nilable: true, default: nil, read_only: false, description: "The ID of the reporting API server."},
    decodable_versions: {key: "decodableVersions", accessor: "decodable_versions", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions."},
    encoding_version: {key: "encodingVersion", accessor: "encoding_version", kind: "String", nilable: true, default: nil, read_only: false, description: "The API server encodes the object to this version when persisting it in the backend (e.g., etcd)."},
  )]
  class Api::Apiserverinternal::V1alpha1::ServerStorageVersion < ::K8S::Types::Api::Apiserverinternal::V1alpha1::ServerStorageVersion::Instance
    include ::K8S::Types::Api::Apiserverinternal::V1alpha1::ServerStorageVersion
    include ::K8S::Kubernetes::Object

    # The ID of the reporting API server.
    def api_server_id : String?
      self.["apiServerID"].as(String?)
    end

    # :ditto:
    def api_server_id! : String
      self.["apiServerID"].as(String?).not_nil!
    end

    # :ditto:
    def api_server_id? : String?
      self.["apiServerID"]?.as(String?)
    end

    # :ditto:
    def api_server_id=(value : String?)
      self.["apiServerID"] = value
    end

    # The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    def decodable_versions : ::Array(String)?
      self.["decodableVersions"].as(::Array(String)?)
    end

    # :ditto:
    def decodable_versions! : ::Array(String)
      self.["decodableVersions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def decodable_versions? : ::Array(String)?
      self.["decodableVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def decodable_versions=(value : ::Array(String)?)
      self.["decodableVersions"] = value
    end

    # The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    def encoding_version : String?
      self.["encodingVersion"].as(String?)
    end

    # :ditto:
    def encoding_version! : String
      self.["encodingVersion"].as(String?).not_nil!
    end

    # :ditto:
    def encoding_version? : String?
      self.["encodingVersion"]?.as(String?)
    end

    # :ditto:
    def encoding_version=(value : String?)
      self.["encodingVersion"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiServerID", accessor: "api_server_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "decodableVersions", accessor: "decodable_versions", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "encodingVersion", accessor: "encoding_version", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
