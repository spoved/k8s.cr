# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # IPBlock describes a particular CIDR (Ex. ["192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.]("192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.)
  class Api::Networking::V1::IPBlock
    # CIDR is a string representing the IP Block Valid examples are ["192.168.1.1/24" or "2001:db9::/64"]("192.168.1.1/24" or "2001:db9::/64")
    property cidr : String

    # Except is a slice of CIDRs that should not be included within an IP Block Valid examples are ["192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range)
    property except : Array(String) | Nil

    ::YAML.mapping({
      cidr:   {type: String, nilable: false, key: "cidr", getter: false, setter: false},
      except: {type: Array(String), nilable: true, key: "except", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      cidr:   {type: String, nilable: false, key: "cidr", getter: false, setter: false},
      except: {type: Array(String), nilable: true, key: "except", getter: false, setter: false},
    }, true)

    def initialize(*, @cidr : String, @except : Array | Nil = nil)
    end
  end
end
