# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TCPSocketAction describes an action based on opening a socket
  @[::K8S::Properties(
    host: {type: String, nilable: true, key: "host", getter: false, setter: false},
    port: {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
  )]
  class Api::Core::V1::TCPSocketAction
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Optional: Host name to connect to, defaults to the pod IP.
    @[::JSON::Field(key: "host", emit_null: false)]
    @[::YAML::Field(key: "host", emit_null: false)]
    property host : String | Nil

    # Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    @[::JSON::Field(key: "port", emit_null: true)]
    @[::YAML::Field(key: "port", emit_null: true)]
    property port : Int32 | String

    def initialize(*, @port : Int32 | String, @host : String | Nil = nil)
    end
  end
end
