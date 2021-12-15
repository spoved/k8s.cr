# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NetworkPolicyPort describes a port to allow traffic on
  @[::K8S::Properties(
    end_port: {type: Int32, nilable: true, key: "endPort", getter: false, setter: false},
    port: {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
    protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
  )]
  class Api::Networking::V1::NetworkPolicyPort
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Beta state and is enabled by default. It can be disabled using the Feature Gate "NetworkPolicyEndPort".
    @[::JSON::Field(key: "endPort", emit_null: false)]
    @[::YAML::Field(key: "endPort", emit_null: false)]
    property end_port : Int32 | Nil

    # The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    @[::JSON::Field(key: "port", emit_null: false)]
    @[::YAML::Field(key: "port", emit_null: false)]
    property port : Int32 | String | Nil

    # The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    @[::JSON::Field(key: "protocol", emit_null: false)]
    @[::YAML::Field(key: "protocol", emit_null: false)]
    property protocol : String | Nil

    def initialize(*, @end_port : Int32 | Nil = nil, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
