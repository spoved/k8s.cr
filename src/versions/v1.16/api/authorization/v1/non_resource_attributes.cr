# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
  @[::K8S::Properties(
    path: {type: String, nilable: true, key: "path", getter: false, setter: false},
    verb: {type: String, nilable: true, key: "verb", getter: false, setter: false},
  )]
  class Api::Authorization::V1::NonResourceAttributes
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Path is the URL path of the request
    @[::JSON::Field(key: "path", emit_null: false)]
    @[::YAML::Field(key: "path", emit_null: false)]
    property path : String | Nil

    # Verb is the standard HTTP verb
    @[::JSON::Field(key: "verb", emit_null: false)]
    @[::YAML::Field(key: "verb", emit_null: false)]
    property verb : String | Nil

    def initialize(*, @path : String | Nil = nil, @verb : String | Nil = nil)
    end
  end
end
