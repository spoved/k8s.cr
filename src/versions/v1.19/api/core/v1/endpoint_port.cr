# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointPort is a tuple that describes a single port.
  @[::K8S::Properties(
    app_protocol: {type: String, nilable: true, key: "appProtocol", getter: false, setter: false},
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    port: {type: Int32, nilable: false, key: "port", getter: false, setter: false},
    protocol: {type: String, nilable: true, key: "protocol", getter: false, setter: false},
  )]
  class Api::Core::V1::EndpointPort
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. This is a beta field that is guarded by the ServiceAppProtocol feature gate and enabled by default.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol. This is a beta field that is guarded by the ServiceAppProtocol feature gate and enabled by default.)
    @[::JSON::Field(key: "appProtocol", emit_null: false)]
    @[::YAML::Field(key: "appProtocol", emit_null: false)]
    property app_protocol : String | Nil

    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # The port number of the endpoint.
    @[::JSON::Field(key: "port", emit_null: true)]
    @[::YAML::Field(key: "port", emit_null: true)]
    property port : Int32

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @[::JSON::Field(key: "protocol", emit_null: false)]
    @[::YAML::Field(key: "protocol", emit_null: false)]
    property protocol : String | Nil

    def initialize(*, @port : Int32, @app_protocol : String | Nil = nil, @name : String | Nil = nil, @protocol : String | Nil = nil)
    end
  end
end
