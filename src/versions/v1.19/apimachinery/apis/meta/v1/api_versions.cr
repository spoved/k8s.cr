# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::APIVersions; end

require "./server_address_by_client_cidr"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::APIVersions`.
  module Types::Apimachinery::Apis::Meta::V1::APIVersions
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # :ditto:
    abstract def api_version=(value : String)
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String)
    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    abstract def server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)?
    # :ditto:
    abstract def server_address_by_client_cidrs! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)
    # :ditto:
    abstract def server_address_by_client_cidrs? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)?
    # :ditto:
    abstract def server_address_by_client_cidrs=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR))
    # versions are the api versions that are available.
    abstract def versions : ::Array(String)?
    # :ditto:
    abstract def versions! : ::Array(String)
    # :ditto:
    abstract def versions? : ::Array(String)?
    # :ditto:
    abstract def versions=(value : ::Array(String))
  end

  # APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
  @[::K8S::GroupVersionKind(group: "", kind: "APIVersions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIVersions")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    server_address_by_client_cidrs: {key: "serverAddressByClientCIDRs", accessor: "server_address_by_client_cidrs", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)", nilable: false, default: nil, read_only: false, description: "a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    versions: {key: "versions", accessor: "versions", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "versions are the api versions that are available.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::APIVersions < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::APIVersions
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)")
    k8s_object_accessor("kind", kind : String, true, false, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")
    k8s_object_accessor("serverAddressByClientCIDRs", server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), false, false, "a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.")
    k8s_object_accessor("versions", versions : ::Array(String), false, false, "versions are the api versions that are available.")

    def initialize(*, api_version : String? = nil, kind : String? = nil, server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)? = nil, versions : ::Array(String)? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["kind"] = kind
      self.["serverAddressByClientCIDRs"] = server_address_by_client_cidrs
      self.["versions"] = versions
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
      {key: "serverAddressByClientCIDRs", accessor: "server_address_by_client_cidrs", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)},
      {key: "versions", accessor: "versions", nilable: false, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
