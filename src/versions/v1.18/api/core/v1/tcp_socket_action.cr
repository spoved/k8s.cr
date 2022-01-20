# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::TCPSocketAction; end

module K8S
  # Namespace holding the types for `Api::Core::V1::TCPSocketAction`.
  module Types::Api::Core::V1::TCPSocketAction
    alias ValueType = String | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Optional: Host name to connect to, defaults to the pod IP.
    abstract def host : String?
    # :ditto:
    abstract def host! : String
    # :ditto:
    abstract def host? : String?
    # :ditto:
    abstract def host=(value : String?)
    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    abstract def port : ::Int32 | ::String
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String)
  end

  # TCPSocketAction describes an action based on opening a socket
  @[::K8S::Properties(
    host: {key: "host", accessor: "host", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Host name to connect to, defaults to the pod IP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::TCPSocketAction < ::K8S::Types::Api::Core::V1::TCPSocketAction::Instance
    include ::K8S::Types::Api::Core::V1::TCPSocketAction
    include ::K8S::Kubernetes::Object

    # Optional: Host name to connect to, defaults to the pod IP.
    def host : String?
      self.["host"].as(String?)
    end

    # :ditto:
    def host! : String
      self.["host"].as(String?).not_nil!
    end

    # :ditto:
    def host? : String?
      self.["host"]?.as(String?)
    end

    # :ditto:
    def host=(value : String?)
      self.["host"] = value
    end

    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    def port : ::Int32 | ::String
      self.["port"].as(::Int32 | ::String)
    end

    # :ditto:
    def port! : ::Int32 | ::String
      self.["port"].as(::Int32 | ::String).not_nil!
    end

    # :ditto:
    def port? : ::Int32 | ::String?
      self.["port"]?.as(::Int32 | ::String?)
    end

    # :ditto:
    def port=(value : ::Int32 | ::String)
      self.["port"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "host", accessor: "host", nilable: true, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
      ])
end
  end
end
