# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenReviewStatus is the result of the token authentication request.
  @[::K8S::Properties(
    authenticated: {type: Bool, nilable: true, key: "authenticated", getter: false, setter: false},
    error: {type: String, nilable: true, key: "error", getter: false, setter: false},
    user: {type: Api::Authentication::V1::UserInfo, nilable: true, key: "user", getter: false, setter: false},
  )]
  class Api::Authentication::V1::TokenReviewStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Authenticated indicates that the token was associated with a known user.
    @[::JSON::Field(key: "authenticated", emit_null: false)]
    @[::YAML::Field(key: "authenticated", emit_null: false)]
    property authenticated : Bool | Nil

    # Error indicates that the token couldn't be checked
    @[::JSON::Field(key: "error", emit_null: false)]
    @[::YAML::Field(key: "error", emit_null: false)]
    property error : String | Nil

    # User is the UserInfo associated with the provided token.
    @[::JSON::Field(key: "user", emit_null: false)]
    @[::YAML::Field(key: "user", emit_null: false)]
    property user : Api::Authentication::V1::UserInfo | Nil

    def initialize(*, @authenticated : Bool | Nil = nil, @error : String | Nil = nil, @user : Api::Authentication::V1::UserInfo | Nil = nil)
    end
  end
end