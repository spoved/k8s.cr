# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointPort is a tuple that describes a single port.
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    port: {type: Int32, nilable: false, key: "port", getter: false, setter: false},
    protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
  )]
  class Api::Core::V1::EndpointPort
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    property name : String | Nil

    # The port number of the endpoint.
    property port : Int32

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    property protocol : String | Nil

    def initialize(*, @port : Int32, @name : String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
