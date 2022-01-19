# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1beta1::FlowDistinguisherMethod; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1beta1::FlowDistinguisherMethod`.
  module Types::Api::Flowcontrol::V1beta1::FlowDistinguisherMethod
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # FlowDistinguisherMethod specifies the method of a flow distinguisher.
  @[::K8S::Properties(
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "`type` is the type of flow distinguisher method The supported types are \"ByUser\" and \"ByNamespace\". Required."},
  )]
  class Api::Flowcontrol::V1beta1::FlowDistinguisherMethod < ::K8S::Types::Api::Flowcontrol::V1beta1::FlowDistinguisherMethod::Instance
    include ::K8S::Types::Api::Flowcontrol::V1beta1::FlowDistinguisherMethod
    include ::K8S::Kubernetes::Object

    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
