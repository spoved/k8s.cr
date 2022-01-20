# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Apps::V1::RollingUpdateStatefulSetStrategy; end

module K8S
  # Namespace holding the types for `Api::Apps::V1::RollingUpdateStatefulSetStrategy`.
  module Types::Api::Apps::V1::RollingUpdateStatefulSetStrategy
    alias ValueType = Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
    abstract def partition : Int32?
    # :ditto:
    abstract def partition! : Int32
    # :ditto:
    abstract def partition? : Int32?
    # :ditto:
    abstract def partition=(value : Int32?)
  end

  # RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
  @[::K8S::Properties(
    partition: {key: "partition", accessor: "partition", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Apps::V1::RollingUpdateStatefulSetStrategy < ::K8S::Types::Api::Apps::V1::RollingUpdateStatefulSetStrategy::Instance
    include ::K8S::Types::Api::Apps::V1::RollingUpdateStatefulSetStrategy
    include ::K8S::Kubernetes::Object

    # Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
    def partition : Int32?
      self.["partition"].as(Int32?)
    end

    # :ditto:
    def partition! : Int32
      self.["partition"].as(Int32?).not_nil!
    end

    # :ditto:
    def partition? : Int32?
      self.["partition"]?.as(Int32?)
    end

    # :ditto:
    def partition=(value : Int32?)
      self.["partition"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "partition", accessor: "partition", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
