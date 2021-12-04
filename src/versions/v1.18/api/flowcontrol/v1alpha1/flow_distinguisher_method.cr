# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # FlowDistinguisherMethod specifies the method of a flow distinguisher.
  class Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    property type : String

    ::YAML.mapping({
      type: {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      type: {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @type : String)
    end
  end
end
