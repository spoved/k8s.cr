# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by [networking/v1/NetworkPolicyPort.](networking/v1/NetworkPolicyPort.)
  class Api::Extensions::V1beta1::NetworkPolicyPort
    # If specified, the port on the given protocol.  This can either be a numerical or named port on a pod.  If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
    property port : Int32 | String | Nil

    # Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
    property protocol : String | Nil

    ::YAML.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      port:     {type: Int32 | String, nilable: true, key: "port", getter: false, setter: false},
      protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32 | String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
