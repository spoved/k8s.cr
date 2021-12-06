# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # AllowedFlexVolume represents a single Flexvolume that is allowed to be used. Deprecated: use AllowedFlexVolume from policy API Group instead.
  @[::K8S::Properties(
    driver: {type: String, nilable: false, key: "driver", getter: false, setter: false},
  )]
  class Api::Extensions::V1beta1::AllowedFlexVolume
    include ::JSON::Serializable
    include ::YAML::Serializable

    # driver is the name of the Flexvolume driver.
    @[::JSON::Field(key: "driver", emit_null: true)]
    @[::YAML::Field(key: "driver", emit_null: true)]
    property driver : String

    def initialize(*, @driver : String)
    end
  end
end
