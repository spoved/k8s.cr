# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # EndpointHints provides hints describing how an endpoint should be consumed.
  class Api::Discovery::V1beta1::EndpointHints
    # forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing. May contain a maximum of 8 entries.
    property for_zones : Array(Api::Discovery::V1beta1::ForZone) | Nil

    ::YAML.mapping({
      for_zones: {type: Array(Api::Discovery::V1beta1::ForZone), nilable: true, key: "forZones", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      for_zones: {type: Array(Api::Discovery::V1beta1::ForZone), nilable: true, key: "forZones", getter: false, setter: false},
    }, true)

    def initialize(*, @for_zones : Array | Nil = nil)
    end
  end
end
