# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::HTTPGetAction; end

require "./http_header"

module K8S
  # Namespace holding the types for `Api::Core::V1::HTTPGetAction`.
  module Types::Api::Core::V1::HTTPGetAction
    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    abstract def host : String?
    # :ditto:
    abstract def host! : String
    # :ditto:
    abstract def host? : String?
    # :ditto:
    abstract def host=(value : String)
    # Custom headers to set in the request. HTTP allows repeated headers.
    abstract def http_headers : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
    # :ditto:
    abstract def http_headers! : ::Array(::K8S::Api::Core::V1::HTTPHeader)
    # :ditto:
    abstract def http_headers? : ::Array(::K8S::Api::Core::V1::HTTPHeader)?
    # :ditto:
    abstract def http_headers=(value : ::Array(::K8S::Api::Core::V1::HTTPHeader))
    # Path to access on the HTTP server.
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    abstract def port : ::Int32 | ::String?
    # :ditto:
    abstract def port! : ::Int32 | ::String
    # :ditto:
    abstract def port? : ::Int32 | ::String?
    # :ditto:
    abstract def port=(value : ::Int32 | ::String)
    # Scheme to use for connecting to the host. Defaults to HTTP.
    #
    # Possible enum values:
    #  - `"HTTP"` means that the scheme used will be http://
    #  - `"HTTPS"` means that the scheme used will be https://
    abstract def scheme : String?
    # :ditto:
    abstract def scheme! : String
    # :ditto:
    abstract def scheme? : String?
    # :ditto:
    abstract def scheme=(value : String)
  end

  # HTTPGetAction describes an action based on HTTP Get requests.
  @[::K8S::Properties(
    host: {key: "host", accessor: "host", kind: "String", nilable: true, default: nil, read_only: false, description: "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    http_headers: {key: "httpHeaders", accessor: "http_headers", kind: "::Array(::K8S::Api::Core::V1::HTTPHeader)", nilable: true, default: nil, read_only: false, description: "Custom headers to set in the request. HTTP allows repeated headers.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: true, default: nil, read_only: false, description: "Path to access on the HTTP server.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    port: {key: "port", accessor: "port", kind: "::Int32 | ::String", nilable: false, default: nil, read_only: false, description: "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scheme: {key: "scheme", accessor: "scheme", kind: "String", nilable: true, default: nil, read_only: false, description: "Scheme to use for connecting to the host. Defaults to HTTP.\n\nPossible enum values:\n - `\"HTTP\"` means that the scheme used will be http://\n - `\"HTTPS\"` means that the scheme used will be https://", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::HTTPGetAction < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::HTTPGetAction
    k8s_object_accessor("host", host : String, true, false, "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.")
    k8s_object_accessor("httpHeaders", http_headers : ::Array(::K8S::Api::Core::V1::HTTPHeader), true, false, "Custom headers to set in the request. HTTP allows repeated headers.")
    k8s_object_accessor("path", path : String, true, false, "Path to access on the HTTP server.")
    k8s_object_accessor("port", port : ::Int32 | ::String, false, false, "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.")
    k8s_object_accessor("scheme", scheme : String, true, false, "Scheme to use for connecting to the host. Defaults to HTTP.\n\nPossible enum values:\n - `\"HTTP\"` means that the scheme used will be http://\n - `\"HTTPS\"` means that the scheme used will be https://")

    def initialize(*, host : String? = nil, http_headers : ::Array(::K8S::Api::Core::V1::HTTPHeader)? = nil, path : String? = nil, port : ::Int32 | ::String? = nil, scheme : String? = nil)
      super()
      self.["host"] = host
      self.["httpHeaders"] = http_headers
      self.["path"] = path
      self.["port"] = port
      self.["scheme"] = scheme
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "host", accessor: "host", nilable: true, read_only: false, default: nil, kind: String},
      {key: "httpHeaders", accessor: "http_headers", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::HTTPHeader)},
      {key: "path", accessor: "path", nilable: true, read_only: false, default: nil, kind: String},
      {key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: ::Union(::Int32 | ::String)},
      {key: "scheme", accessor: "scheme", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
