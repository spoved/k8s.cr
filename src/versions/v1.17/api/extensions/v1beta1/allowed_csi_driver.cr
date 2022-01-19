# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::AllowedCSIDriver; end

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::AllowedCSIDriver`.
  module Types::Api::Extensions::V1beta1::AllowedCSIDriver
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name is the registered name of the CSI driver
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
  end

  # AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
  @[::K8S::Properties(
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the registered name of the CSI driver"},
  )]
  class Api::Extensions::V1beta1::AllowedCSIDriver < ::K8S::Types::Api::Extensions::V1beta1::AllowedCSIDriver::Instance
    include ::K8S::Types::Api::Extensions::V1beta1::AllowedCSIDriver
    include ::K8S::Kubernetes::Object

    # Name is the registered name of the CSI driver
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
