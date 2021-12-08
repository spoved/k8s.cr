# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
  @[::K8S::Properties(
    hostnames: {type: Array(String), nilable: true, key: "hostnames", getter: false, setter: false},
    ip: {type: String, nilable: true, key: "ip", getter: false, setter: false},
  )]
  class Api::Core::V1::HostAlias
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Hostnames for the above IP address.
    @[::JSON::Field(key: "hostnames", emit_null: false)]
    @[::YAML::Field(key: "hostnames", emit_null: false)]
    property hostnames : Array(String) | Nil

    # IP address of the host file entry.
    @[::JSON::Field(key: "ip", emit_null: false)]
    @[::YAML::Field(key: "ip", emit_null: false)]
    property ip : String | Nil

    def initialize(*, @hostnames : Array | Nil = nil, @ip : String | Nil = nil)
    end
  end
end
