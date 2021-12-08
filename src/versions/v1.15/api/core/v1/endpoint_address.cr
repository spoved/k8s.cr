# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointAddress is a tuple that describes single IP address.
  @[::K8S::Properties(
    hostname: {type: String, nilable: true, key: "hostname", getter: false, setter: false},
    ip: {type: String, nilable: false, key: "ip", getter: false, setter: false},
    node_name: {type: String, nilable: true, key: "nodeName", getter: false, setter: false},
    target_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "targetRef", getter: false, setter: false},
  )]
  class Api::Core::V1::EndpointAddress
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The Hostname of this endpoint
    @[::JSON::Field(key: "hostname", emit_null: false)]
    @[::YAML::Field(key: "hostname", emit_null: false)]
    property hostname : String | Nil

    # The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)
    @[::JSON::Field(key: "ip", emit_null: true)]
    @[::YAML::Field(key: "ip", emit_null: true)]
    property ip : String

    # Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    @[::JSON::Field(key: "nodeName", emit_null: false)]
    @[::YAML::Field(key: "nodeName", emit_null: false)]
    property node_name : String | Nil

    # Reference to object providing the endpoint.
    @[::JSON::Field(key: "targetRef", emit_null: false)]
    @[::YAML::Field(key: "targetRef", emit_null: false)]
    property target_ref : Api::Core::V1::ObjectReference | Nil

    def initialize(*, @ip : String, @hostname : String | Nil = nil, @node_name : String | Nil = nil, @target_ref : Api::Core::V1::ObjectReference | Nil = nil)
    end
  end
end
