# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  @[::K8S::Properties(
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::AllowedCSIDriver
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the registered name of the CSI driver
    property name : String

    def initialize(*, @name : String)
    end
  end
end
