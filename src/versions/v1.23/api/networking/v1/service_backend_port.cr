# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ServiceBackendPort is the service port being referenced.
  @[::K8S::Properties(
    name: {type: String, nilable: true, key: "name", getter: false, setter: false},
    number: {type: Int32, nilable: true, key: "number", getter: false, setter: false},
  )]
  class Api::Networking::V1::ServiceBackendPort
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
    @[::JSON::Field(key: "name", emit_null: false)]
    @[::YAML::Field(key: "name", emit_null: false)]
    property name : String | Nil

    # Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
    @[::JSON::Field(key: "number", emit_null: false)]
    @[::YAML::Field(key: "number", emit_null: false)]
    property number : Int32 | Nil

    def initialize(*, @name : String | Nil = nil, @number : Int32 | Nil = nil)
    end
  end
end
