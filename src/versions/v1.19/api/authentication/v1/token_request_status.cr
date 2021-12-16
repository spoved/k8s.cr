# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenRequestStatus is the result of a token request.
  @[::K8S::Properties(
    expiration_timestamp: {type: Time, nilable: false, key: "expirationTimestamp", getter: false, setter: false},
    token: {type: String, nilable: false, key: "token", getter: false, setter: false},
  )]
  class Api::Authentication::V1::TokenRequestStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ExpirationTimestamp is the time of expiration of the returned token.
    @[::JSON::Field(key: "expirationTimestamp", emit_null: true, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    @[::YAML::Field(key: "expirationTimestamp", emit_null: true, converter: Time::Format.new("%Y-%m-%dT%TZ"))]
    property expiration_timestamp : Time

    # Token is the opaque bearer token.
    @[::JSON::Field(key: "token", emit_null: true)]
    @[::YAML::Field(key: "token", emit_null: true)]
    property token : String

    def initialize(*, @expiration_timestamp : Time, @token : String)
    end
  end
end
