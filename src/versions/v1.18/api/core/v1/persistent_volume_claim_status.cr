# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimStatus; end

require "./persistent_volume_claim_condition"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimStatus`.
  module Types::Api::Core::V1::PersistentVolumeClaimStatus
    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String)?)
    # Represents the actual resources of the underlying volume.
    abstract def capacity : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def capacity? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
    # Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    abstract def conditions : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?)
    # Phase represents the current phase of PersistentVolumeClaim.
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
  end

  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Represents the actual resources of the underlying volume.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)", nilable: true, default: nil, read_only: false, description: "Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase represents the current phase of PersistentVolumeClaim.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimStatus

    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    def access_modes : ::Array(String)?
      self.["accessModes"].as(::Array(String)?)
    end

    # :ditto:
    def access_modes! : ::Array(String)
      self.["accessModes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def access_modes? : ::Array(String)?
      self.["accessModes"]?.as(::Array(String)?)
    end

    # :ditto:
    def access_modes=(value : ::Array(String)?)
      self.["accessModes"] = value
    end

    # Represents the actual resources of the underlying volume.
    def capacity : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity! : ::Hash(String, ::Int32 | ::String)
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def capacity? : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["capacity"] = value
    end

    # Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    def conditions : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)?)
      self.["conditions"] = value
    end

    # Phase represents the current phase of PersistentVolumeClaim.
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
        { key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition) },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
