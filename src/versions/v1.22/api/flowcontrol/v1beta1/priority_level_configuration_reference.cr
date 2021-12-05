# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `name` is the name of the priority level configuration being referenced Required.
    property name : String

    def initialize(*, @name : String)
    end
  end
end
