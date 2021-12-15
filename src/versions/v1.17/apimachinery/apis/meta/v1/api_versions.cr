# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
  @[::K8S::GroupVersionKind(group: "", kind: "APIVersions", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.APIVersions")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    server_address_by_client_cidrs: {type: Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), nilable: false, key: "serverAddressByClientCIDRs", getter: false, setter: false},
    versions: {type: Array(String), nilable: false, key: "versions", getter: false, setter: false},
  )]
  class Apimachinery::Apis::Meta::V1::APIVersions
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

    # a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
    @[::JSON::Field(key: "serverAddressByClientCIDRs", emit_null: true)]
    @[::YAML::Field(key: "serverAddressByClientCIDRs", emit_null: true)]
    property server_address_by_client_cidrs : Array(Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR)

    # versions are the api versions that are available.
    @[::JSON::Field(key: "versions", emit_null: true)]
    @[::YAML::Field(key: "versions", emit_null: true)]
    property versions : Array(String)

    def initialize(*, @server_address_by_client_cidrs : Array, @versions : Array, @api_version : String | Nil = nil, @kind : String | Nil = nil)
    end
  end
end
