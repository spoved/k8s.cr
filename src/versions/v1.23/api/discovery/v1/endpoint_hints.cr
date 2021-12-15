# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # EndpointHints provides hints describing how an endpoint should be consumed.
  @[::K8S::Properties(
    for_zones: {type: Array(Api::Discovery::V1::ForZone), nilable: true, key: "forZones", getter: false, setter: false},
  )]
  class Api::Discovery::V1::EndpointHints
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
    @[::JSON::Field(key: "forZones", emit_null: false)]
    @[::YAML::Field(key: "forZones", emit_null: false)]
    property for_zones : Array(Api::Discovery::V1::ForZone) | Nil

    def initialize(*, @for_zones : Array | Nil = nil)
    end
  end
end
