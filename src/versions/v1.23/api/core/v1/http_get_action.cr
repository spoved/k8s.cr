# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HTTPGetAction describes an action based on HTTP Get requests.
  @[::K8S::Properties(
    host: {type: String, nilable: true, key: "host", getter: false, setter: false},
    http_headers: {type: Array(Api::Core::V1::HTTPHeader), nilable: true, key: "httpHeaders", getter: false, setter: false},
    path: {type: String, nilable: true, key: "path", getter: false, setter: false},
    port: {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
    scheme: {type: String, nilable: true, key: "scheme", getter: false, setter: false},
  )]
  class Api::Core::V1::HTTPGetAction
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    @[::JSON::Field(key: "host", emit_null: false)]
    @[::YAML::Field(key: "host", emit_null: false)]
    property host : String | Nil

    # Custom headers to set in the request. HTTP allows repeated headers.
    @[::JSON::Field(key: "httpHeaders", emit_null: false)]
    @[::YAML::Field(key: "httpHeaders", emit_null: false)]
    property http_headers : Array(Api::Core::V1::HTTPHeader) | Nil

    # Path to access on the HTTP server.
    @[::JSON::Field(key: "path", emit_null: false)]
    @[::YAML::Field(key: "path", emit_null: false)]
    property path : String | Nil

    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    @[::JSON::Field(key: "port", emit_null: true)]
    @[::YAML::Field(key: "port", emit_null: true)]
    property port : Int32 | String

    # Scheme to use for connecting to the host. Defaults to HTTP.
    #
    # Possible enum values:
    #  - `"HTTP"` means that the scheme used will be http://
    #  - `"HTTPS"` means that the scheme used will be https://
    @[::JSON::Field(key: "scheme", emit_null: false)]
    @[::YAML::Field(key: "scheme", emit_null: false)]
    property scheme : String | Nil

    def initialize(*, @port : Int32 | String, @host : String | Nil = nil, @http_headers : Array(Api::Core::V1::HTTPHeader) | Nil = nil, @path : String | Nil = nil, @scheme : String | Nil = nil)
    end
  end
end
