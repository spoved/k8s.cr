# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::IDRange; end

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::IDRange`.
  module Types::Api::Policy::V1beta1::IDRange
    # max is the end of the range, inclusive.
    abstract def max : Int32
    # :ditto:
    abstract def max! : Int32
    # :ditto:
    abstract def max? : Int32?
    # :ditto:
    abstract def max=(value : Int32)
    # min is the start of the range, inclusive.
    abstract def min : Int32
    # :ditto:
    abstract def min! : Int32
    # :ditto:
    abstract def min? : Int32?
    # :ditto:
    abstract def min=(value : Int32)
  end

  # IDRange provides a [min/max of an allowed range of IDs.](min/max of an allowed range of IDs.)
  @[::K8S::Properties(
    max: {key: "max", accessor: "max", kind: "Int32", nilable: false, default: nil, read_only: false, description: "max is the end of the range, inclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    min: {key: "min", accessor: "min", kind: "Int32", nilable: false, default: nil, read_only: false, description: "min is the start of the range, inclusive.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Policy::V1beta1::IDRange < ::K8S::GenericObject
    include ::K8S::Types::Api::Policy::V1beta1::IDRange

    # max is the end of the range, inclusive.
    def max : Int32
      self.["max"].as(Int32)
    end

    # :ditto:
    def max! : Int32
      self.["max"].as(Int32).not_nil!
    end

    # :ditto:
    def max? : Int32?
      self.["max"]?.as(Int32?)
    end

    # :ditto:
    def max=(value : Int32)
      self.["max"] = value
    end

    # min is the start of the range, inclusive.
    def min : Int32
      self.["min"].as(Int32)
    end

    # :ditto:
    def min! : Int32
      self.["min"].as(Int32).not_nil!
    end

    # :ditto:
    def min? : Int32?
      self.["min"]?.as(Int32?)
    end

    # :ditto:
    def min=(value : Int32)
      self.["min"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "max", accessor: "max", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "min", accessor: "min", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
