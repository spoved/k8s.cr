# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Preconditions; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Preconditions`.
  module Types::Apimachinery::Apis::Meta::V1::Preconditions
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Specifies the target ResourceVersion
    abstract def resource_version : String?
    # :ditto:
    abstract def resource_version! : String
    # :ditto:
    abstract def resource_version? : String?
    # :ditto:
    abstract def resource_version=(value : String?)
    # Specifies the target UID.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
  end

  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  @[::K8S::Properties(
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the target ResourceVersion"},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "Specifies the target UID."},
  )]
  class Apimachinery::Apis::Meta::V1::Preconditions < ::K8S::Types::Apimachinery::Apis::Meta::V1::Preconditions::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Preconditions
    include ::K8S::Kubernetes::Object

    # Specifies the target ResourceVersion
    def resource_version : String?
      self.["resourceVersion"].as(String?)
    end

    # :ditto:
    def resource_version! : String
      self.["resourceVersion"].as(String?).not_nil!
    end

    # :ditto:
    def resource_version? : String?
      self.["resourceVersion"]?.as(String?)
    end

    # :ditto:
    def resource_version=(value : String?)
      self.["resourceVersion"] = value
    end

    # Specifies the target UID.
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
