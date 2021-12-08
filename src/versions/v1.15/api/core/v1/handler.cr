# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Handler defines a specific action that should be taken
  @[::K8S::Properties(
    exec: {type: Api::Core::V1::ExecAction, nilable: true, key: "exec", getter: false, setter: false},
    http_get: {type: Api::Core::V1::HTTPGetAction, nilable: true, key: "httpGet", getter: false, setter: false},
    tcp_socket: {type: Api::Core::V1::TCPSocketAction, nilable: true, key: "tcpSocket", getter: false, setter: false},
  )]
  class Api::Core::V1::Handler
    include ::JSON::Serializable
    include ::YAML::Serializable

    # One and only one of the following should be specified. Exec specifies the action to take.
    @[::JSON::Field(key: "exec", emit_null: false)]
    @[::YAML::Field(key: "exec", emit_null: false)]
    property exec : Api::Core::V1::ExecAction | Nil

    # HTTPGet specifies the http request to perform.
    @[::JSON::Field(key: "httpGet", emit_null: false)]
    @[::YAML::Field(key: "httpGet", emit_null: false)]
    property http_get : Api::Core::V1::HTTPGetAction | Nil

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    @[::JSON::Field(key: "tcpSocket", emit_null: false)]
    @[::YAML::Field(key: "tcpSocket", emit_null: false)]
    property tcp_socket : Api::Core::V1::TCPSocketAction | Nil

    def initialize(*, @exec : Api::Core::V1::ExecAction | Nil = nil, @http_get : Api::Core::V1::HTTPGetAction | Nil = nil, @tcp_socket : Api::Core::V1::TCPSocketAction | Nil = nil)
    end
  end
end
