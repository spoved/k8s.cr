# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodDNSConfigOption; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodDNSConfigOption`.
  module Types::Api::Core::V1::PodDNSConfigOption
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Required.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    #
    abstract def value : String?
    # :ditto:
    abstract def value! : String
    # :ditto:
    abstract def value? : String?
    # :ditto:
    abstract def value=(value : String?)
  end

  # PodDNSConfigOption defines DNS resolver options of a pod.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "Required."},
    value: {key: "value", accessor: "value", kind: "String", nilable: true, default: nil, read_only: false, description: nil},
  )]
  class Api::Core::V1::PodDNSConfigOption < ::K8S::Types::Api::Core::V1::PodDNSConfigOption::Instance
    include ::K8S::Types::Api::Core::V1::PodDNSConfigOption
    include ::K8S::Kubernetes::Object

    # Required.
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    #
    def value : String?
      self.["value"].as(String?)
    end

    # :ditto:
    def value! : String
      self.["value"].as(String?).not_nil!
    end

    # :ditto:
    def value? : String?
      self.["value"]?.as(String?)
    end

    # :ditto:
    def value=(value : String?)
      self.["value"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "value", accessor: "value", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
