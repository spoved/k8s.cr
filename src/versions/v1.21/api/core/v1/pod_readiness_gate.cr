# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodReadinessGate; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodReadinessGate`.
  module Types::Api::Core::V1::PodReadinessGate
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ConditionType refers to a condition in the pod's condition list with matching type.
    abstract def condition_type : String
    # :ditto:
    abstract def condition_type! : String
    # :ditto:
    abstract def condition_type? : String?
    # :ditto:
    abstract def condition_type=(value : String)
  end

  # PodReadinessGate contains the reference to a pod condition
  @[::K8S::Properties(
    condition_type: {key: "conditionType", accessor: "condition_type", kind: "String", nilable: false, default: nil, read_only: false, description: "ConditionType refers to a condition in the pod's condition list with matching type.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodReadinessGate < ::K8S::Types::Api::Core::V1::PodReadinessGate::Instance
    include ::K8S::Types::Api::Core::V1::PodReadinessGate
    include ::K8S::Kubernetes::Object

    # ConditionType refers to a condition in the pod's condition list with matching type.
    def condition_type : String
      self.["conditionType"].as(String)
    end

    # :ditto:
    def condition_type! : String
      self.["conditionType"].as(String).not_nil!
    end

    # :ditto:
    def condition_type? : String?
      self.["conditionType"]?.as(String?)
    end

    # :ditto:
    def condition_type=(value : String)
      self.["conditionType"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditionType", accessor: "condition_type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
