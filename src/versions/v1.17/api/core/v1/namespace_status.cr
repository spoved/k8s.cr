# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "any_hash"

module K8S::Types::Api::Core::V1::NamespaceStatus; end

require "./namespace_condition"

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceStatus`.
  #
  # NOTE: Module auto-generated by `AnyHash.define_new`.
  module Types::Api::Core::V1::NamespaceStatus
    alias Key = String
    alias ValueType = ::Array(::K8S::Api::Core::V1::NamespaceCondition) | String | Nil
    # alias Value = ValueType | Array(Value) | Set(Value) | Hash(Key, Value)
    alias Instance = ::AnyHash(Key, ValueType)

    # Represents the latest available observations of a namespace's current state.
    abstract def conditions : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::NamespaceCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
  end

  # NamespaceStatus is information about the current status of a Namespace.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::NamespaceCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a namespace's current state."},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)"},
  )]
  class Api::Core::V1::NamespaceStatus < ::K8S::Types::Api::Core::V1::NamespaceStatus::Instance
    include ::K8S::Types::Api::Core::V1::NamespaceStatus
    include ::K8S::Kubernetes::Object

    # Represents the latest available observations of a namespace's current state.
    def conditions : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::NamespaceCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
      self.["conditions"] = value
    end

    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    def phase : String?
      self.["phase"].as(String?)
    end

    # :ditto:
    def phase! : String
      self.["phase"].as(String?).not_nil!
    end

    # :ditto:
    def phase? : String?
      self.["phase"]?.as(String?)
    end

    # :ditto:
    def phase=(value : String?)
      self.["phase"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NamespaceCondition) },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
