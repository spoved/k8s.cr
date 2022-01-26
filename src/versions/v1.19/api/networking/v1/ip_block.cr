# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Networking::V1::IPBlock; end

module K8S
  # Namespace holding the types for `Api::Networking::V1::IPBlock`.
  module Types::Api::Networking::V1::IPBlock
    # CIDR is a string representing the IP Block Valid examples are [["192.168.1.1/24" or "2001:db9::/64"]("192.168.1.1/24" or "2001:db9::/64")](["192.168.1.1/24" or "2001:db9::/64"]("192.168.1.1/24" or "2001:db9::/64"))
    abstract def cidr : String
    # :ditto:
    abstract def cidr! : String
    # :ditto:
    abstract def cidr? : String?
    # :ditto:
    abstract def cidr=(value : String)
    # Except is a slice of CIDRs that should not be included within an IP Block Valid examples are [["192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range)](["192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range))
    abstract def except : ::Array(String)?
    # :ditto:
    abstract def except! : ::Array(String)
    # :ditto:
    abstract def except? : ::Array(String)?
    # :ditto:
    abstract def except=(value : ::Array(String)?)
  end

  # IPBlock describes a particular CIDR (Ex. ["192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.]("192.168.1.1/24","2001:db9::/64") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.)
  @[::K8S::Properties(
    cidr: {key: "cidr", accessor: "cidr", kind: "String", nilable: false, default: nil, read_only: false, description: "CIDR is a string representing the IP Block Valid examples are [\"192.168.1.1/24\" or \"2001:db9::/64\"](\"192.168.1.1/24\" or \"2001:db9::/64\")", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    except: {key: "except", accessor: "except", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Except is a slice of CIDRs that should not be included within an IP Block Valid examples are [\"192.168.1.1/24\" or \"2001:db9::/64\" Except values will be rejected if they are outside the CIDR range](\"192.168.1.1/24\" or \"2001:db9::/64\" Except values will be rejected if they are outside the CIDR range)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Networking::V1::IPBlock < ::K8S::GenericObject
    include ::K8S::Types::Api::Networking::V1::IPBlock

    # CIDR is a string representing the IP Block Valid examples are [["192.168.1.1/24" or "2001:db9::/64"]("192.168.1.1/24" or "2001:db9::/64")](["192.168.1.1/24" or "2001:db9::/64"]("192.168.1.1/24" or "2001:db9::/64"))
    def cidr : String
      self.["cidr"].as(String)
    end

    # :ditto:
    def cidr! : String
      self.["cidr"].as(String).not_nil!
    end

    # :ditto:
    def cidr? : String?
      self.["cidr"]?.as(String?)
    end

    # :ditto:
    def cidr=(value : String)
      self.["cidr"] = value
    end

    # Except is a slice of CIDRs that should not be included within an IP Block Valid examples are [["192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range)](["192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" or "2001:db9::/64" Except values will be rejected if they are outside the CIDR range))
    def except : ::Array(String)?
      self.["except"].as(::Array(String)?)
    end

    # :ditto:
    def except! : ::Array(String)
      self.["except"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def except? : ::Array(String)?
      self.["except"]?.as(::Array(String)?)
    end

    # :ditto:
    def except=(value : ::Array(String)?)
      self.["except"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "cidr", accessor: "cidr", nilable: false, read_only: false, default: nil, kind: String },
        { key: "except", accessor: "except", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
