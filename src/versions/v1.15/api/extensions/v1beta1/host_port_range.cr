# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Extensions::V1beta1::HostPortRange; end

module K8S
  # Namespace holding the types for `Api::Extensions::V1beta1::HostPortRange`.
  module Types::Api::Extensions::V1beta1::HostPortRange
    alias ValueType = Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

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

  # HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined. Deprecated: use HostPortRange from policy API Group instead.
  @[::K8S::Properties(
    max: {key: "max", accessor: "max", kind: "Int32", nilable: false, default: nil, read_only: false, description: "max is the end of the range, inclusive."},
    min: {key: "min", accessor: "min", kind: "Int32", nilable: false, default: nil, read_only: false, description: "min is the start of the range, inclusive."},
  )]
  class Api::Extensions::V1beta1::HostPortRange < ::K8S::Types::Api::Extensions::V1beta1::HostPortRange::Instance
    include ::K8S::Types::Api::Extensions::V1beta1::HostPortRange
    include ::K8S::Kubernetes::Object

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
