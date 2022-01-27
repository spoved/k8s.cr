# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::HostPortRange; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::HostPortRange`.
  module Types::Api::Policy::V1beta1::HostPortRange
    # max is the end of the range, inclusive.
    abstract def max : Int32?
    # :ditto:
    abstract def max! : Int32
    # :ditto:
    abstract def max? : Int32?
    # :ditto:
    abstract def max=(value : Int32)
    # min is the start of the range, inclusive.
    abstract def min : Int32?
    # :ditto:
    abstract def min! : Int32
    # :ditto:
    abstract def min? : Int32?
    # :ditto:
    abstract def min=(value : Int32)
  end

  # HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
  @[::K8S::Properties(
    max: {key: "max", accessor: "max", kind: "Int32", nilable: false, default: nil, read_only: false, description: "max is the end of the range, inclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min: {key: "min", accessor: "min", kind: "Int32", nilable: false, default: nil, read_only: false, description: "min is the start of the range, inclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::HostPortRange < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::HostPortRange
    k8s_object_accessor("max", max : Int32, false, false, "max is the end of the range, inclusive.")
    k8s_object_accessor("min", min : Int32, false, false, "min is the start of the range, inclusive.")

    def initialize(*, max : Int32? = nil, min : Int32? = nil)
      super()
      self.["max"] = max
      self.["min"] = min
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "max", accessor: "max", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "min", accessor: "min", nilable: false, read_only: false, default: nil, kind: Int32},
    ])
  end
end
