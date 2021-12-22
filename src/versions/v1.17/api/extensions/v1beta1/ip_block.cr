# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # DEPRECATED 1.9 - This group version of IPBlock is deprecated by [networking/v1/IPBlock. IPBlock describes a particular CIDR (Ex. "192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.](networking/v1/IPBlock. IPBlock describes a particular CIDR (Ex. "192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.)
  @[::K8S::Properties(
    cidr: {type: String, nilable: false, key: "cidr", getter: false, setter: false},
    except: {type: Array(String), nilable: true, key: "except", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::IPBlock
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # CIDR is a string representing the IP Block Valid examples are ["192.168.1.1/24"]("192.168.1.1/24")
    @[::JSON::Field(key: "cidr", emit_null: true)]
    @[::YAML::Field(key: "cidr", emit_null: true)]
    property cidr : String

    # Except is a slice of CIDRs that should not be included within an IP Block Valid examples are ["192.168.1.1/24" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" Except values will be rejected if they are outside the CIDR range)
    @[::JSON::Field(key: "except", emit_null: false)]
    @[::YAML::Field(key: "except", emit_null: false)]
    property except : Array(String) | Nil

    def initialize(*, @cidr : String, @except : Array(String) | Nil = nil)
    end
  end
end