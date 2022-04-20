# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("ServerAddressByClientCIDR",
  namespace: "::K8S::Apimachinery::Apis::Meta::V1",
  properties: [

    {name: "client_cidr", kind: String, key: "clientCIDR", nilable: false, read_only: false, description: "The CIDR with which clients can match their IP to figure out the server address that they should use."},
    {name: "server_address", kind: String, key: "serverAddress", nilable: false, read_only: false, description: "Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port."},

  ]
)
