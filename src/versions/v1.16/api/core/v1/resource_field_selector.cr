# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ResourceFieldSelector; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ResourceFieldSelector`.
  module Types::Api::Core::V1::ResourceFieldSelector
    alias ValueType = String | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Container name: required for volumes, optional for env vars
    abstract def container_name : String?
    # :ditto:
    abstract def container_name! : String
    # :ditto:
    abstract def container_name? : String?
    # :ditto:
    abstract def container_name=(value : String?)
    # Specifies the output format of the exposed resources, defaults to "1"
    abstract def divisor : ::Int32 | ::String?
    # :ditto:
    abstract def divisor! : ::Int32 | ::String
    # :ditto:
    abstract def divisor? : ::Int32 | ::String?
    # :ditto:
    abstract def divisor=(value : ::Int32 | ::String?)
    # Required: resource to select
    abstract def resource : String
    # :ditto:
    abstract def resource! : String
    # :ditto:
    abstract def resource? : String?
    # :ditto:
    abstract def resource=(value : String)
  end

  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  @[::K8S::Properties(
    container_name: {key: "containerName", accessor: "container_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Container name: required for volumes, optional for env vars"},
    divisor: {key: "divisor", accessor: "divisor", kind: "::Int32 | ::String", nilable: true, default: nil, read_only: false, description: "Specifies the output format of the exposed resources, defaults to \"1\""},
    resource: {key: "resource", accessor: "resource", kind: "String", nilable: false, default: nil, read_only: false, description: "Required: resource to select"},
  )]
  class Api::Core::V1::ResourceFieldSelector < ::K8S::Types::Api::Core::V1::ResourceFieldSelector::Instance
    include ::K8S::Types::Api::Core::V1::ResourceFieldSelector
    include ::K8S::Kubernetes::Object

    # Container name: required for volumes, optional for env vars
    def container_name : String?
      self.["containerName"].as(String?)
    end

    # :ditto:
    def container_name! : String
      self.["containerName"].as(String?).not_nil!
    end

    # :ditto:
    def container_name? : String?
      self.["containerName"]?.as(String?)
    end

    # :ditto:
    def container_name=(value : String?)
      self.["containerName"] = value
    end

    # Specifies the output format of the exposed resources, defaults to "1"
    def divisor : ::Int32 | ::String?
      self.["divisor"].as(::Int32 | ::String?)
    end

    # :ditto:
    def divisor! : ::Int32 | ::String
      self.["divisor"].as(::Int32 | ::String?).not_nil!
    end

    # :ditto:
    def divisor? : ::Int32 | ::String?
      self.["divisor"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def divisor=(value : ::Int32 | ::String?)
      self.["divisor"] = value
    end

    # Required: resource to select
    def resource : String
      self.["resource"].as(String)
    end

    # :ditto:
    def resource! : String
      self.["resource"].as(String).not_nil!
    end

    # :ditto:
    def resource? : String?
      self.["resource"]?.as(String?)
    end

    # :ditto:
    def resource=(value : String)
      self.["resource"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "containerName", accessor: "container_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "divisor", accessor: "divisor", nilable: true, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "resource", accessor: "resource", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
