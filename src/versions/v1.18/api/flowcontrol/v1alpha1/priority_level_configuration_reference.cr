# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  class Api::Flowcontrol::V1alpha1::PriorityLevelConfigurationReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the name of the priority level configuration being referenced Required.
    property name : String

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String)
    end
  end
end
