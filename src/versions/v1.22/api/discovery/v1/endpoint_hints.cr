# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./for_zone"

::K8S::Kubernetes::Resource.define_object("EndpointHints",
  namespace: "::K8S::Api::Discovery::V1",
  properties: [

    {name: "for_zones", kind: ::Array(::K8S::Api::Discovery::V1::ForZone), key: "forZones", nilable: true, read_only: false, description: "forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing."},

  ]
)
