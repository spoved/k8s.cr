# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
  @[::K8S::Properties(
    audience: {type: String, nilable: true, key: "audience", getter: false, setter: false},
    expiration_seconds: {type: Int32, nilable: true, key: "expirationSeconds", getter: false, setter: false},
    path: {type: String, nilable: false, key: "path", getter: false, setter: false},
  )]
  class Api::Core::V1::ServiceAccountTokenProjection
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
    @[::JSON::Field(key: "audience", emit_null: false)]
    @[::YAML::Field(key: "audience", emit_null: false)]
    property audience : String | Nil

    # ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
    @[::JSON::Field(key: "expirationSeconds", emit_null: false)]
    @[::YAML::Field(key: "expirationSeconds", emit_null: false)]
    property expiration_seconds : Int32 | Nil

    # Path is the path relative to the mount point of the file to project the token into.
    @[::JSON::Field(key: "path", emit_null: true)]
    @[::YAML::Field(key: "path", emit_null: true)]
    property path : String

    def initialize(*, @path : String, @audience : String | Nil = nil, @expiration_seconds : Int32 | Nil = nil)
    end
  end
end