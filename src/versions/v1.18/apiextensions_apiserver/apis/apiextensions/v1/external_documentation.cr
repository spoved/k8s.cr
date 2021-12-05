# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ExternalDocumentation allows referencing an external resource for extended documentation.
  @[::K8S::Properties(
    description: {type: String, nilable: true, key: "description", getter: false, setter: false},
    url: {type: String, nilable: true, key: "url", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation
    include ::JSON::Serializable
    include ::YAML::Serializable

    property description : String | Nil

    property url : String | Nil

    def initialize(*, @description : String | Nil = nil, @url : String | Nil = nil)
    end
  end
end
