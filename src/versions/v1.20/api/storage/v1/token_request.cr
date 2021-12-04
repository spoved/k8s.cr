# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # TokenRequest contains parameters of a service account token.
  class Api::Storage::V1::TokenRequest
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
    property audience : String

    # ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    property expiration_seconds : Int32 | Nil

    ::YAML.mapping({
      audience:           {type: String, nilable: false, key: "audience", getter: false, setter: false},
      expiration_seconds: {type: Int32, nilable: true, key: "expirationSeconds", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      audience:           {type: String, nilable: false, key: "audience", getter: false, setter: false},
      expiration_seconds: {type: Int32, nilable: true, key: "expirationSeconds", getter: false, setter: false},
    }, true)

    def initialize(*, @audience : String, @expiration_seconds : Int32 | Nil = nil)
    end
  end
end
