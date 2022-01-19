# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::ServiceBackendPort; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::ServiceBackendPort`.
  module Types::Api::Networking::V1::ServiceBackendPort
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
    abstract def number : Int32?
    # :ditto:
    abstract def number! : Int32
    # :ditto:
    abstract def number? : Int32?
    # :ditto:
    abstract def number=(value : Int32?)
  end

  # ServiceBackendPort is the service port being referenced.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\"."},
    number: {key: "number", accessor: "number", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\"."},
  )]
  class Api::Networking::V1::ServiceBackendPort < ::K8S::Types::Api::Networking::V1::ServiceBackendPort::Instance
    include ::K8S::Types::Api::Networking::V1::ServiceBackendPort
    include ::K8S::Kubernetes::Object

    # Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
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

    # Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
    def number : Int32?
      self.["number"].as(Int32?)
    end

    # :ditto:
    def number! : Int32
      self.["number"].as(Int32?).not_nil!
    end

    # :ditto:
    def number? : Int32?
      self.["number"]?.as(Int32?)
    end

    # :ditto:
    def number=(value : Int32?)
      self.["number"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "number", accessor: "number", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
