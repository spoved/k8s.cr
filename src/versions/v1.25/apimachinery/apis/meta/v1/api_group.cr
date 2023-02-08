# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./group_version_for_discovery"
require "./server_address_by_client_cidr"

::K8S::Kubernetes::Resource.define_resource("", "v1", "APIGroup",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name is the name of the group."},
    {name: "preferred_version", kind: ::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery, key: "preferredVersion", nilable: true, read_only: false, description: "preferredVersion is the version preferred by the API server, which probably is the storage version."},
    {name: "server_address_by_client_cidrs", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR), key: "serverAddressByClientCIDRs", nilable: true, read_only: false, description: "a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP."},
    {name: "versions", kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery), key: "versions", nilable: false, read_only: false, description: "versions are the versions supported in this group."},

  ],
  description: "APIGroup contains the name, the supported versions, and the preferred version of a group.",
  versions: [{group: "", kind: "APIGroup", version: "v1"}],
)
