# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::APIGroup; end

require "./group_version_for_discovery"
require "./server_address_by_client_cidr"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::APIGroup`.
  module Types::Apimachinery::Apis::Meta::V1::APIGroup
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
    # name is the name of the group.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    abstract def preferred_version : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery?
    # :ditto:
    abstract def preferred_version! : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    # :ditto:
    abstract def preferred_version? : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery?
    # :ditto:
    abstract def preferred_version=(value : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)
    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    abstract def server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)?
    # :ditto:
    abstract def server_address_by_client_cidrs! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)
    # :ditto:
    abstract def server_address_by_client_cidrs? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)?
    # :ditto:
    abstract def server_address_by_client_cidrs=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR))
    # versions are the versions supported in this group.
    abstract def versions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)?
    # :ditto:
    abstract def versions! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)
    # :ditto:
    abstract def versions? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)?
    # :ditto:
    abstract def versions=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery))
  end

  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  @[::K8S::GroupVersionKind(group: "", kind: "APIGroup", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroup")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: true, default: nil, read_only: false, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name is the name of the group.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    preferred_version: {key: "preferredVersion", accessor: "preferred_version", kind: "::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery", nilable: true, default: nil, read_only: false, description: "preferredVersion is the version preferred by the API server, which probably is the storage version.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    server_address_by_client_cidrs: {key: "serverAddressByClientCIDRs", accessor: "server_address_by_client_cidrs", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)", nilable: true, default: nil, read_only: false, description: "a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    versions: {key: "versions", accessor: "versions", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)", nilable: false, default: nil, read_only: false, description: "versions are the versions supported in this group.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::APIGroup < ::K8S::GenericObject
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::APIGroup
    k8s_object_accessor("apiVersion", api_version : String, true, false, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)")
    k8s_object_accessor("kind", kind : String, true, false, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)")
    k8s_object_accessor("name", name : String, false, false, "name is the name of the group.")
    k8s_object_accessor("preferredVersion", preferred_version : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, true, false, "preferredVersion is the version preferred by the API server, which probably is the storage version.")
    k8s_object_accessor("serverAddressByClientCIDRs", server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), true, false, "a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.")
    k8s_object_accessor("versions", versions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), false, false, "versions are the versions supported in this group.")

    def initialize(*, api_version : String? = nil, kind : String? = nil, name : String? = nil, preferred_version : ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery? = nil, server_address_by_client_cidrs : ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)? = nil, versions : ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)? = nil)
      super()
      self.["apiVersion"] = api_version
      self.["kind"] = kind
      self.["name"] = name
      self.["preferredVersion"] = preferred_version
      self.["serverAddressByClientCIDRs"] = server_address_by_client_cidrs
      self.["versions"] = versions
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "preferredVersion", accessor: "preferred_version", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery},
      {key: "serverAddressByClientCIDRs", accessor: "server_address_by_client_cidrs", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)},
      {key: "versions", accessor: "versions", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)},
    ])
  end
end
