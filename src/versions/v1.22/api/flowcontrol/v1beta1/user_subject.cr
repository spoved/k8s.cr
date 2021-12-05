# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # UserSubject holds detailed information for user-kind subject.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::UserSubject
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the username that matches, or "*" to match all usernames. Required.
    property name : String

    def initialize(*, @name : String)
    end
  end
end
