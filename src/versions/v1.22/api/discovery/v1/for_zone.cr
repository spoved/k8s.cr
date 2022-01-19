# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Discovery::V1::ForZone; end

module K8S
  # Namespace holding the types for `Api::Discovery::V1::ForZone`.
  module Types::Api::Discovery::V1::ForZone
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # name represents the name of the zone.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # ForZone provides information about which zones should consume this endpoint.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "name represents the name of the zone."},
  )]
  class Api::Discovery::V1::ForZone < ::K8S::Types::Api::Discovery::V1::ForZone::Instance
    include ::K8S::Types::Api::Discovery::V1::ForZone
    include ::K8S::Kubernetes::Object

    # name represents the name of the zone.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
