# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::Initializers; end

require "./initializer"
require "./status"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::Initializers`.
  module Types::Apimachinery::Apis::Meta::V1::Initializers
    alias ValueType = ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer) | ::K8S::Apimachinery::Apis::Meta::V1::Status | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
    abstract def pending : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)
    # :ditto:
    abstract def pending! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)
    # :ditto:
    abstract def pending? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)?
    # :ditto:
    abstract def pending=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer))
    # If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
    abstract def result : ::K8S::Apimachinery::Apis::Meta::V1::Status?
    # :ditto:
    abstract def result! : ::K8S::Apimachinery::Apis::Meta::V1::Status
    # :ditto:
    abstract def result? : ::K8S::Apimachinery::Apis::Meta::V1::Status?
    # :ditto:
    abstract def result=(value : ::K8S::Apimachinery::Apis::Meta::V1::Status?)
  end

  # Initializers tracks the progress of initialization.
  @[::K8S::Properties(
    pending: {key: "pending", accessor: "pending", kind: "::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)", nilable: false, default: nil, read_only: false, description: "Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients."},
    result: {key: "result", accessor: "result", kind: "::K8S::Apimachinery::Apis::Meta::V1::Status", nilable: true, default: nil, read_only: false, description: "If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion."},
  )]
  class Apimachinery::Apis::Meta::V1::Initializers < ::K8S::Types::Apimachinery::Apis::Meta::V1::Initializers::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::Initializers
    include ::K8S::Kubernetes::Object

    # Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
    def pending : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)
      self.["pending"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer))
    end

    # :ditto:
    def pending! : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)
      self.["pending"].as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)).not_nil!
    end

    # :ditto:
    def pending? : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)?
      self.["pending"]?.as(::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer)?)
    end

    # :ditto:
    def pending=(value : ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer))
      self.["pending"] = value
    end

    # If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
    def result : ::K8S::Apimachinery::Apis::Meta::V1::Status?
      self.["result"].as(::K8S::Apimachinery::Apis::Meta::V1::Status?)
    end

    # :ditto:
    def result! : ::K8S::Apimachinery::Apis::Meta::V1::Status
      self.["result"].as(::K8S::Apimachinery::Apis::Meta::V1::Status?).not_nil!
    end

    # :ditto:
    def result? : ::K8S::Apimachinery::Apis::Meta::V1::Status?
      self.["result"]?.as(::K8S::Apimachinery::Apis::Meta::V1::Status?)
    end

    # :ditto:
    def result=(value : ::K8S::Apimachinery::Apis::Meta::V1::Status?)
      self.["result"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "pending", accessor: "pending", nilable: false, read_only: false, default: nil, kind: ::Array(::K8S::Apimachinery::Apis::Meta::V1::Initializer) },
        { key: "result", accessor: "result", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::Status },
      ])
end
  end
end
