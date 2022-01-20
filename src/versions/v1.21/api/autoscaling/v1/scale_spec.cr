# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Autoscaling::V1::ScaleSpec; end

module K8S
  # Namespace holding the types for `Api::Autoscaling::V1::ScaleSpec`.
  module Types::Api::Autoscaling::V1::ScaleSpec
    alias ValueType = Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # desired number of instances for the scaled object.
    abstract def replicas : Int32?
    # :ditto:
    abstract def replicas! : Int32
    # :ditto:
    abstract def replicas? : Int32?
    # :ditto:
    abstract def replicas=(value : Int32?)
  end

  # ScaleSpec describes the attributes of a scale subresource.
  @[::K8S::Properties(
    replicas: {key: "replicas", accessor: "replicas", kind: "Int32", nilable: true, default: nil, read_only: false, description: "desired number of instances for the scaled object.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Autoscaling::V1::ScaleSpec < ::K8S::Types::Api::Autoscaling::V1::ScaleSpec::Instance
    include ::K8S::Types::Api::Autoscaling::V1::ScaleSpec
    include ::K8S::Kubernetes::Object

    # desired number of instances for the scaled object.
    def replicas : Int32?
      self.["replicas"].as(Int32?)
    end

    # :ditto:
    def replicas! : Int32
      self.["replicas"].as(Int32?).not_nil!
    end

    # :ditto:
    def replicas? : Int32?
      self.["replicas"]?.as(Int32?)
    end

    # :ditto:
    def replicas=(value : Int32?)
      self.["replicas"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "replicas", accessor: "replicas", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
