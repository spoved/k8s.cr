# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  @[::K8S::Properties(
    error: {type: String, nilable: true, key: "error", getter: false, setter: false},
    port: {type: Int32, nilable: false, key: "port", getter: false, setter: false},
    protocol: {type: String, nilable: false, key: "protocol", getter: false, setter: false},
  )]
  class Api::Core::V1::PortStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)
    @[::JSON::Field(key: "error", emit_null: false)]
    @[::YAML::Field(key: "error", emit_null: false)]
    property error : String | Nil

    # Port is the port number of the service port of which status is recorded here
    @[::JSON::Field(key: "port", emit_null: true)]
    @[::YAML::Field(key: "port", emit_null: true)]
    property port : Int32

    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    #
    # Possible enum values:
    #  - `"SCTP"` is the SCTP protocol.
    #  - `"TCP"` is the TCP protocol.
    #  - `"UDP"` is the UDP protocol.
    @[::JSON::Field(key: "protocol", emit_null: true)]
    @[::YAML::Field(key: "protocol", emit_null: true)]
    property protocol : String

    def initialize(*, @port : Int32, @protocol : String, @error : String | Nil = nil)
    end
  end
end
