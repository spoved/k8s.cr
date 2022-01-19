# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeAddress; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeAddress`.
  module Types::Api::Core::V1::NodeAddress
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The node address.
    abstract def address : String
    # :ditto:
    abstract def address! : String
    # :ditto:
    abstract def address? : String?
    # :ditto:
    abstract def address=(value : String)
    # Node address type, one of Hostname, ExternalIP or InternalIP.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # NodeAddress contains information for the node's address.
  @[::K8S::Properties(
    address: {key: "address", accessor: "address", kind: "String", nilable: false, default: nil, read_only: false, description: "The node address."},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "Node address type, one of Hostname, ExternalIP or InternalIP."},
  )]
  class Api::Core::V1::NodeAddress < ::K8S::Types::Api::Core::V1::NodeAddress::Instance
    include ::K8S::Types::Api::Core::V1::NodeAddress
    include ::K8S::Kubernetes::Object

    # The node address.
    def address : String
      self.["address"].as(String)
    end

    # :ditto:
    def address! : String
      self.["address"].as(String).not_nil!
    end

    # :ditto:
    def address? : String?
      self.["address"]?.as(String?)
    end

    # :ditto:
    def address=(value : String)
      self.["address"] = value
    end

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "address", accessor: "address", nilable: false, read_only: false, default: nil, kind: String },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
