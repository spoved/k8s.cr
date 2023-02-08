# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./endpoint_subset"

::K8S::Kubernetes::Resource.define_resource("", "v1", "Endpoints",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "subsets", kind: ::Array(::K8S::Api::Core::V1::EndpointSubset), key: "subsets", nilable: true, read_only: false, description: "The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service."},

  ],
  description: "Endpoints is a collection of endpoints that implement the actual service. Example:\n\n\t Name: \"mysvc\",\n\t Subsets: [\n\t   {\n\t     Addresses: [{\"ip\": \"10.10.1.1\"}, {\"ip\": \"10.10.2.2\"}],\n\t     Ports: [{\"name\": \"a\", \"port\": 8675}, {\"name\": \"b\", \"port\": 309}]\n\t   },\n\t   {\n\t     Addresses: [{\"ip\": \"10.10.3.3\"}],\n\t     Ports: [{\"name\": \"a\", \"port\": 93}, {\"name\": \"b\", \"port\": 76}]\n\t   },\n\t]",
  versions: [{group: "", kind: "Endpoints", version: "v1"}],
)
