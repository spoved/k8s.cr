# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by [networking/v1/NetworkPolicyPort.](networking/v1/NetworkPolicyPort.)
  @[::K8S::Properties(
    port: {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
    protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::NetworkPolicyPort
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    @[::JSON::Field(key: "port", emit_null: false)]
    @[::YAML::Field(key: "port", emit_null: false)]
    property port : Int32 | String | Nil

    # Optional.  The protocol (TCP or UDP) which traffic must match. If not specified, this field defaults to TCP.
    @[::JSON::Field(key: "protocol", emit_null: false)]
    @[::YAML::Field(key: "protocol", emit_null: false)]
    property protocol : String | Nil

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
