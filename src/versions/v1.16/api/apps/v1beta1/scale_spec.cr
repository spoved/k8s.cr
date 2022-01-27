# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1beta1::ScaleSpec; end

module K8S
  # Namespace holding the types for `Api::Apps::V1beta1::ScaleSpec`.
  module Types::Api::Apps::V1beta1::ScaleSpec
    # desired number of instances for the scaled object.
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32)
  end

  # ScaleSpec describes the attributes of a scale subresource
  @[::K8S::Properties(
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "desired number of instances for the scaled object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1beta1::ScaleSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Apps::V1beta1::ScaleSpec
    k8s_object_accessor("replicas", replicas : Int32, true, false, "desired number of instances for the scaled object.")

    def initialize(*, replicas : Int32? = nil)
      super()
      self.["replicas"] = replicas
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32},
    ])
  end
end
