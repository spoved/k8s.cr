# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenRequest contains parameters of a service account token.
  @[::K8S::Properties(
    audience: {type: String, nilable: false, key: "audience", getter: false, setter: false},
    expiration_seconds: {type: Int32, nilable: true, key: "expirationSeconds", getter: false, setter: false},
  )]
  class Api::Storage::V1::TokenRequest
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
    @[::JSON::Field(key: "audience", emit_null: true)]
    @[::YAML::Field(key: "audience", emit_null: true)]
    property audience : String

    # ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    @[::JSON::Field(key: "expirationSeconds", emit_null: false)]
    @[::YAML::Field(key: "expirationSeconds", emit_null: false)]
    property expiration_seconds : Int32 | Nil

    def initialize(*, @audience : String, @expiration_seconds : Int32 | Nil = nil)
    end
  end
end
