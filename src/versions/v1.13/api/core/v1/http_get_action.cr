# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::HTTPGetAction; end

require "./http_header"

module K8S
  # Namespace holding the types for `Api::Core::V1::HTTPGetAction`.
  module Types::Api::Core::V1::HTTPGetAction
    alias ValueType = String | ::Array(::K8S::Api::Core::V1::HTTPHeader) | ::Int32 | ::String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    abstract def host : String?
    # :ditto:
    abstract def host! : String
    # :ditto:
    abstract def host? : String?
    # :ditto:
    abstract def host=(value : String?)
    # Custom headers to set in the request. HTTP allows repeated headers.
    abstract def http_headers : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
    # :ditto:
    abstract def http_headers! : ::Array(::K8S::Api::Core::V1::HTTPHeader)
    # :ditto:
    abstract def http_headers? : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
    # :ditto:
    abstract def http_headers=(value : ::Array(::K8S::Api::Core::V1::HTTPHeader)?)
    # Path to access on the HTTP server.
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String?)
    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    abstract def port : ::Int32 | ::String
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String)
    # Scheme to use for connecting to the host. Defaults to HTTP.
    abstract def scheme : String?
    # :ditto:
    abstract def scheme! : String
    # :ditto:
    abstract def scheme? : String?
    # :ditto:
    abstract def scheme=(value : String?)
  end

  # HTTPGetAction describes an action based on HTTP Get requests.
  @[::K8S::Properties(
    host: {key: "host", accessor: "host", kind: "String", nilable: true, default: nil, read_only: false, description: "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."},
    http_headers: {key: "httpHeaders", accessor: "http_headers", kind: "::Array(::K8S::Api::Core::V1::HTTPHeader)", nilable: true, default: nil, read_only: false, description: "Custom headers to set in the request. HTTP allows repeated headers."},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path to access on the HTTP server."},
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME."},
    scheme: {key: "scheme", accessor: "scheme", kind: "String", nilable: true, default: nil, read_only: false, description: "Scheme to use for connecting to the host. Defaults to HTTP."},
  )]
  class Api::Core::V1::HTTPGetAction < ::K8S::Types::Api::Core::V1::HTTPGetAction::Instance
    include ::K8S::Types::Api::Core::V1::HTTPGetAction
    include ::K8S::Kubernetes::Object

    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
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

    # Custom headers to set in the request. HTTP allows repeated headers.
    def http_headers : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
      self.["httpHeaders"].as(::Array(::K8S::Api::Core::V1::HTTPHeader)?)
    end

    # :ditto:
    def http_headers! : ::Array(::K8S::Api::Core::V1::HTTPHeader)
      self.["httpHeaders"].as(::Array(::K8S::Api::Core::V1::HTTPHeader)?).not_nil!
    end

    # :ditto:
    def http_headers? : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
      self.["httpHeaders"]?.as(::Array(::K8S::Api::Core::V1::HTTPHeader)?)
    end

    # :ditto:
    def http_headers=(value : ::Array(::K8S::Api::Core::V1::HTTPHeader)?)
      self.["httpHeaders"] = value
    end

    # Path to access on the HTTP server.
    def path : String?
      self.["path"].as(String?)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String?).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String?)
      self.["path"] = value
    end

    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
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

    # Scheme to use for connecting to the host. Defaults to HTTP.
    def scheme : String?
      self.["scheme"].as(String?)
    end

    # :ditto:
    def scheme! : String
      self.["scheme"].as(String?).not_nil!
    end

    # :ditto:
    def scheme? : String?
      self.["scheme"]?.as(String?)
    end

    # :ditto:
    def scheme=(value : String?)
      self.["scheme"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "host", accessor: "host", nilable: true, read_only: false, default: nil, kind: String },
        { key: "httpHeaders", accessor: "http_headers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::HTTPHeader) },
        { key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String) },
        { key: "scheme", accessor: "scheme", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
