# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Endpoint represents a single logical "backend" implementing a service.
  class Api::Discovery::V1alpha1::Endpoint
    include ::JSON::Serializable
    include ::YAML::Serializable

    # addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. This allows for cases like dual-stack (IPv4 and IPv6) networking. Consumers (e.g. kube-proxy) must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
    property addresses : Array(String)

    # conditions contains information about the current status of the endpoint.
    property conditions : Api::Discovery::V1alpha1::EndpointConditions | Nil

    # hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must pass DNS Label (RFC 1123) validation.
    property hostname : String | Nil

    # targetRef is a reference to a Kubernetes object that represents this endpoint.
    property target_ref : Api::Core::V1::ObjectReference | Nil

    # topology contains arbitrary topology information associated with the endpoint. These [key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node](key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node)
    #   where the endpoint is located. This should match the corresponding
    #   node label.
    # * [topology.kubernetes.io/zone: the value indicates the zone where the](topology.kubernetes.io/zone: the value indicates the zone where the)
    #   endpoint is located. This should match the corresponding node label.
    # * [topology.kubernetes.io/region: the value indicates the region where the](topology.kubernetes.io/region: the value indicates the region where the)
    #   endpoint is located. This should match the corresponding node label.
    property topology : Hash(String, String) | Nil

    ::YAML.mapping({
      addresses:  {type: Array(String), nilable: false, key: "addresses", getter: false, setter: false},
      conditions: {type: Api::Discovery::V1alpha1::EndpointConditions, nilable: true, key: "conditions", getter: false, setter: false},
      hostname:   {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      target_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "targetRef", getter: false, setter: false},
      topology:   {type: Hash(String, String), nilable: true, key: "topology", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      addresses:  {type: Array(String), nilable: false, key: "addresses", getter: false, setter: false},
      conditions: {type: Api::Discovery::V1alpha1::EndpointConditions, nilable: true, key: "conditions", getter: false, setter: false},
      hostname:   {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      target_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "targetRef", getter: false, setter: false},
      topology:   {type: Hash(String, String), nilable: true, key: "topology", getter: false, setter: false},
    }, true)

    def initialize(*, @addresses : Array, @conditions : Api::Discovery::V1alpha1::EndpointConditions | Nil = nil, @hostname : String | Nil = nil, @target_ref : Api::Core::V1::ObjectReference | Nil = nil, @topology : Hash(String, String) | Nil = nil)
    end
  end
end
