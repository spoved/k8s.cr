# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenReviewSpec is a description of the token authentication request.
  @[::K8S::Properties(
    token: {type: String, nilable: true, key: "token", getter: false, setter: false},
  )]
  class Api::Authentication::V1::TokenReviewSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Token is the opaque bearer token.
    @[::JSON::Field(key: "token", emit_null: false)]
    @[::YAML::Field(key: "token", emit_null: false)]
    property token : String | Nil

    def initialize(*, @token : String | Nil = nil)
    end
  end
end
