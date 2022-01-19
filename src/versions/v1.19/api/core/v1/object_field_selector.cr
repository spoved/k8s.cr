# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ObjectFieldSelector; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ObjectFieldSelector`.
  module Types::Api::Core::V1::ObjectFieldSelector
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String?)
    # Path of the field to select in the specified API version.
    abstract def field_path : String
    # :ditto:
    abstract def field_path! : String
    # :ditto:
    abstract def field_path? : String?
    # :ditto:
    abstract def field_path=(value : String)
  end

  # ObjectFieldSelector selects an APIVersioned field of an object.
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."},
    field_path: {key: "fieldPath", accessor: "field_path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path of the field to select in the specified API version."},
  )]
  class Api::Core::V1::ObjectFieldSelector < ::K8S::Types::Api::Core::V1::ObjectFieldSelector::Instance
    include ::K8S::Types::Api::Core::V1::ObjectFieldSelector
    include ::K8S::Kubernetes::Object

    # Version of the schema the FieldPath is written in terms of, defaults to "v1".
    def api_version : String?
      self.["apiVersion"].as(String?)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String?).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # :ditto:
    def api_version=(value : String?)
      self.["apiVersion"] = value
    end

    # Path of the field to select in the specified API version.
    def field_path : String
      self.["fieldPath"].as(String)
    end

    # :ditto:
    def field_path! : String
      self.["fieldPath"].as(String).not_nil!
    end

    # :ditto:
    def field_path? : String?
      self.["fieldPath"]?.as(String?)
    end

    # :ditto:
    def field_path=(value : String)
      self.["fieldPath"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "fieldPath", accessor: "field_path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
