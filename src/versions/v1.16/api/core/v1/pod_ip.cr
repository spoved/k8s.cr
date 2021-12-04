# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # IP address information for entries in the (plural) PodIPs field. Each entry includes:
  #    IP: An IP address allocated to the pod. Routable at least within the cluster.
  class Api::Core::V1::PodIP
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    property ip : String | Nil

    ::YAML.mapping({
      ip: {type: String, nilable: true, key: "ip", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      ip: {type: String, nilable: true, key: "ip", getter: false, setter: false},
    }, true)

    def initialize(*, @ip : String | Nil = nil)
    end
  end
end
