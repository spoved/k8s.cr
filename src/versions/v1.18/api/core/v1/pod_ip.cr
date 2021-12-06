# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # IP address information for entries in the (plural) PodIPs field. Each entry includes:
  #    IP: An IP address allocated to the pod. Routable at least within the cluster.
  @[::K8S::Properties(
    ip: {type: String, nilable: true, key: "ip", getter: false, setter: false},
  )]
  class Api::Core::V1::PodIP
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    @[::JSON::Field(key: "ip", emit_null: false)]
    @[::YAML::Field(key: "ip", emit_null: false)]
    property ip : String | Nil

    def initialize(*, @ip : String | Nil = nil)
    end
  end
end
