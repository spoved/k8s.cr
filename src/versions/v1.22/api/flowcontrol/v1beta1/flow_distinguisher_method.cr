# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # FlowDistinguisherMethod specifies the method of a flow distinguisher.
  @[::K8S::Properties(
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::FlowDistinguisherMethod
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String)
    end
  end
end
