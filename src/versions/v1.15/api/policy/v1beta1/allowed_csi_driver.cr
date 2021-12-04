# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  class Api::Policy::V1beta1::AllowedCSIDriver
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the registered name of the CSI driver
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
