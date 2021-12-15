# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIGroup contains the name, the supported versions, and the preferred version of a group.
  @[::K8S::GroupVersionKind(group: "", kind: "APIGroup", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroup")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    preferred_version: {type: Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, nilable: true, key: "preferredVersion", getter: false, setter: false},
    server_address_by_client_cidrs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: true, key: "serverAddressByClientCIDRs", getter: false, setter: false},
    versions: {type: Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), nilable: false, key: "versions", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::APIGroup
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion", emit_null: false)]
    @[::YAML::Field(key: "apiVersion", emit_null: false)]
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind", emit_null: false)]
    @[::YAML::Field(key: "kind", emit_null: false)]
    property kind : String | Nil

    # name is the name of the group.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # preferredVersion is the version preferred by the API server, which probably is the storage version.
    @[::JSON::Field(key: "preferredVersion", emit_null: false)]
    @[::YAML::Field(key: "preferredVersion", emit_null: false)]
    property preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    @[::JSON::Field(key: "serverAddressByClientCIDRs", emit_null: false)]
    @[::YAML::Field(key: "serverAddressByClientCIDRs", emit_null: false)]
    property server_address_by_client_cidrs : Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR) | Nil

    # versions are the versions supported in this group.
    @[::JSON::Field(key: "versions", emit_null: true)]
    @[::YAML::Field(key: "versions", emit_null: true)]
    property versions : Array(Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery)

    def initialize(*, @name : String, @versions : Array, @api_version : String | Nil = nil, @kind : String | Nil = nil, @preferred_version : Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery | Nil = nil, @server_address_by_client_cidrs : Array | Nil = nil)
    end
  end
end
