# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod; end

module K8S
  # Namespace holding the types for `Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod`.
  module Types::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod
    # `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
    abstract def type : String?
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # FlowDistinguisherMethod specifies the method of a flow distinguisher.
  @[::K8S::Properties(
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: "`type` is the type of flow distinguisher method The supported types are \"ByUser\" and \"ByNamespace\". Required.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod < ::K8S::GenericObject
    include ::K8S::Types::Api::Flowcontrol::V1alpha1::FlowDistinguisherMethod
    k8s_object_accessor("type", type : String, false, false, "`type` is the type of flow distinguisher method The supported types are \"ByUser\" and \"ByNamespace\". Required.")

    def initialize(*, type : String? = nil)
      super()
      self.["type"] = type
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
