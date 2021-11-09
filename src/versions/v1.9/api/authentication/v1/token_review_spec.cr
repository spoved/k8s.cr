# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # TokenReviewSpec is a description of the token authentication request.
  class Api::Authentication::V1::TokenReviewSpec
    # Token is the opaque bearer token.
    property token : String | Nil

    ::YAML.mapping({
      token: {type: String, nilable: true, key: "token", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      token: {type: String, nilable: true, key: "token", getter: false, setter: false},
    }, true)

    def initialize(*, @token : String | Nil = nil)
    end
  end
end
