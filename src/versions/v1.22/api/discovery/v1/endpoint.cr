# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Endpoint represents a single logical "backend" implementing a service.
  @[::K8S::Properties(
    addresses: {type: Array(String), nilable: false, key: "addresses", getter: false, setter: false},
    conditions: {type: Api::Discovery::V1::EndpointConditions, nilable: true, key: "conditions", getter: false, setter: false},
    deprecated_topology: {type: Hash(String, String), nilable: true, key: "deprecatedTopology", getter: false, setter: false},
    hints: {type: Api::Discovery::V1::EndpointHints, nilable: true, key: "hints", getter: false, setter: false},
    hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
    node_name: {type: String, nilable: true, key: "nodeName", getter: false, setter: false},
    target_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "targetRef", getter: false, setter: false},
    zone: {type: String, nilable: true, key: "zone", getter: false, setter: false},
  )]
  class Api::Discovery::V1::Endpoint
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
    @[::JSON::Field(key: "addresses", emit_null: true)]
    @[::YAML::Field(key: "addresses", emit_null: true)]
    property addresses : Array(String)

    # conditions contains information about the current status of the endpoint.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Api::Discovery::V1::EndpointConditions | Nil

    # deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
    @[::JSON::Field(key: "deprecatedTopology", emit_null: false)]
    @[::YAML::Field(key: "deprecatedTopology", emit_null: false)]
    property deprecated_topology : Hash(String, String) | Nil

    # hints contains information associated with how an endpoint should be consumed.
    @[::JSON::Field(key: "hints", emit_null: false)]
    @[::YAML::Field(key: "hints", emit_null: false)]
    property hints : Api::Discovery::V1::EndpointHints | Nil

    # hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
    @[::JSON::Field(key: "hostname", emit_null: false)]
    @[::YAML::Field(key: "hostname", emit_null: false)]
    property hostname : String | Nil

    # nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
    @[::JSON::Field(key: "nodeName", emit_null: false)]
    @[::YAML::Field(key: "nodeName", emit_null: false)]
    property node_name : String | Nil

    # targetRef is a reference to a Kubernetes object that represents this endpoint.
    @[::JSON::Field(key: "targetRef", emit_null: false)]
    @[::YAML::Field(key: "targetRef", emit_null: false)]
    property target_ref : Api::Core::V1::ObjectReference | Nil

    # zone is the name of the Zone this endpoint exists in.
    @[::JSON::Field(key: "zone", emit_null: false)]
    @[::YAML::Field(key: "zone", emit_null: false)]
    property zone : String | Nil

    def initialize(*, @addresses : Array(String), @conditions : Api::Discovery::V1::EndpointConditions | Nil = nil, @deprecated_topology : Hash(String, String) | Nil = nil, @hints : Api::Discovery::V1::EndpointHints | Nil = nil, @hostname : String | Nil = nil, @node_name : String | Nil = nil, @target_ref : Api::Core::V1::ObjectReference | Nil = nil, @zone : String | Nil = nil)
    end
  end
end
