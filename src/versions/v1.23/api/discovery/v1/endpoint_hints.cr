# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1::EndpointHints; end

require "./for_zone"

module K8S
  # Namespace holding the types for `Api::Discovery::V1::EndpointHints`.
  module Types::Api::Discovery::V1::EndpointHints
    alias ValueType = ::Array(::K8S::Api::Discovery::V1::ForZone) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
    abstract def for_zones : ::Array(::K8S::Api::Discovery::V1::ForZone)?
    # :ditto:
    abstract def for_zones! : ::Array(::K8S::Api::Discovery::V1::ForZone)
    # :ditto:
    abstract def for_zones? : ::Array(::K8S::Api::Discovery::V1::ForZone)?
    # :ditto:
    abstract def for_zones=(value : ::Array(::K8S::Api::Discovery::V1::ForZone)?)
  end

  # EndpointHints provides hints describing how an endpoint should be consumed.
  @[::K8S::Properties(
    for_zones: {key: "forZones", accessor: "for_zones", kind: "::Array(::K8S::Api::Discovery::V1::ForZone)", nilable: true, default: nil, read_only: false, description: "forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing."},
  )]
  class Api::Discovery::V1::EndpointHints < ::K8S::Types::Api::Discovery::V1::EndpointHints::Instance
    include ::K8S::Types::Api::Discovery::V1::EndpointHints
    include ::K8S::Kubernetes::Object

    # forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
    def for_zones : ::Array(::K8S::Api::Discovery::V1::ForZone)?
      self.["forZones"].as(::Array(::K8S::Api::Discovery::V1::ForZone)?)
    end

    # :ditto:
    def for_zones! : ::Array(::K8S::Api::Discovery::V1::ForZone)
      self.["forZones"].as(::Array(::K8S::Api::Discovery::V1::ForZone)?).not_nil!
    end

    # :ditto:
    def for_zones? : ::Array(::K8S::Api::Discovery::V1::ForZone)?
      self.["forZones"]?.as(::Array(::K8S::Api::Discovery::V1::ForZone)?)
    end

    # :ditto:
    def for_zones=(value : ::Array(::K8S::Api::Discovery::V1::ForZone)?)
      self.["forZones"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "forZones", accessor: "for_zones", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Discovery::V1::ForZone) },
      ])
end
  end
end
