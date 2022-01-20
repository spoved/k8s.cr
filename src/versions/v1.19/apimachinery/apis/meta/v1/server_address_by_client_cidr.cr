# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR; end

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR`.
  module Types::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The CIDR with which clients can match their IP to figure out the server address that they should use.
    abstract def client_cidr : String
    # :ditto:
    abstract def client_cidr! : String
    # :ditto:
    abstract def client_cidr? : String?
    # :ditto:
    abstract def client_cidr=(value : String)
    # Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
    abstract def server_address : String
    # :ditto:
    abstract def server_address! : String
    # :ditto:
    abstract def server_address? : String?
    # :ditto:
    abstract def server_address=(value : String)
  end

  # ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
  @[::K8S::Properties(
    client_cidr: {key: "clientCIDR", accessor: "client_cidr", kind: "String", nilable: false, default: nil, read_only: false, description: "The CIDR with which clients can match their IP to figure out the server address that they should use.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    server_address: {key: "serverAddress", accessor: "server_address", kind: "String", nilable: false, default: nil, read_only: false, description: "Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR < ::K8S::Types::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR
    include ::K8S::Kubernetes::Object

    # The CIDR with which clients can match their IP to figure out the server address that they should use.
    def client_cidr : String
      self.["clientCIDR"].as(String)
    end

    # :ditto:
    def client_cidr! : String
      self.["clientCIDR"].as(String).not_nil!
    end

    # :ditto:
    def client_cidr? : String?
      self.["clientCIDR"]?.as(String?)
    end

    # :ditto:
    def client_cidr=(value : String)
      self.["clientCIDR"] = value
    end

    # Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
    def server_address : String
      self.["serverAddress"].as(String)
    end

    # :ditto:
    def server_address! : String
      self.["serverAddress"].as(String).not_nil!
    end

    # :ditto:
    def server_address? : String?
      self.["serverAddress"]?.as(String?)
    end

    # :ditto:
    def server_address=(value : String)
      self.["serverAddress"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clientCIDR", accessor: "client_cidr", nilable: false, read_only: false, default: nil, kind: String },
        { key: "serverAddress", accessor: "server_address", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
