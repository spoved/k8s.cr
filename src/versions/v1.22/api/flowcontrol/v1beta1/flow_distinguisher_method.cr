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
    include ::YAML::Serializable

    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    property type : String

    def initialize(*, @type : String)
    end
  end
end
