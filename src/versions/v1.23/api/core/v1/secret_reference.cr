# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SecretReference; end

module K8S
  # Namespace holding the types for `Api::Core::V1::SecretReference`.
  module Types::Api::Core::V1::SecretReference
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is unique within a namespace to reference a secret resource.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Namespace defines the space within which the secret name must be unique.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String?)
  end

  # SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is unique within a namespace to reference a secret resource."},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: true, default: nil, read_only: false, description: "Namespace defines the space within which the secret name must be unique."},
  )]
  class Api::Core::V1::SecretReference < ::K8S::Types::Api::Core::V1::SecretReference::Instance
    include ::K8S::Types::Api::Core::V1::SecretReference
    include ::K8S::Kubernetes::Object

    # Name is unique within a namespace to reference a secret resource.
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # Namespace defines the space within which the secret name must be unique.
    def namespace : String?
      self.["namespace"].as(String?)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String?).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String?)
      self.["namespace"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
