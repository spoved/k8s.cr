# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Endpoints is a collection of endpoints that implement the actual service. Example:
  #   Name: "mysvc",
  #   Subsets: [
  #     {
  #       Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
  #       Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
  #     },
  #     {
  #       Addresses: [{"ip": "10.10.3.3"}],
  #       Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
  #     },
  #  ]
  class Kubernetes::Api::V1::Endpoints < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "v1"
    getter kind : String = "Endpoints"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
    property subsets : Array(Kubernetes::Api::V1::EndpointSubset)

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Endpoints", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      subsets:     {type: Array(Kubernetes::Api::V1::EndpointSubset), nilable: false, key: "subsets", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Endpoints", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      subsets:     {type: Array(Kubernetes::Api::V1::EndpointSubset), nilable: false, key: "subsets", getter: false, setter: false},
    }, true)

    def initialize(*, @subsets : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::V1
    alias Endpoints = ::K8S::Kubernetes::Api::V1::Endpoints
  end
end
