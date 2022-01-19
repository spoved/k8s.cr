# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimStatus; end

require "./persistent_volume_claim_condition"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimStatus`.
  module Types::Api::Core::V1::PersistentVolumeClaimStatus
    alias ValueType = ::Array(String) | ::Hash(String, ::Int32 | ::String) | ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # AccessModes contains the actual access modes the volume backing the PVC has. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String)?)
    # The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    abstract def allocated_resources : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocated_resources! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def allocated_resources? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def allocated_resources=(value : ::Hash(String, ::Int32 | ::String)?)
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
    #
    # Possible enum values:
    #  - `"Bound"` used for PersistentVolumeClaims that are bound
    #  - `"Lost"` used for PersistentVolumeClaims that lost their underlying PersistentVolume. The claim was bound to a PersistentVolume and this volume does not exist any longer and all data on it was lost.
    #  - `"Pending"` used for PersistentVolumeClaims that are not yet bound
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
    # ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    abstract def resize_status : String?
    # :ditto:
    abstract def resize_status! : String
    # :ditto:
    abstract def resize_status? : String?
    # :ditto:
    abstract def resize_status=(value : String?)
  end

  # PersistentVolumeClaimStatus is the current status of a persistent volume claim.
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains the actual access modes the volume backing the PVC has. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1)"},
    allocated_resources: {key: "allocatedResources", accessor: "allocated_resources", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature."},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "Represents the actual resources of the underlying volume."},
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition)", nilable: true, default: nil, read_only: false, description: "Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'."},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase represents the current phase of PersistentVolumeClaim.\n\nPossible enum values:\n - `\"Bound\"` used for PersistentVolumeClaims that are bound\n - `\"Lost\"` used for PersistentVolumeClaims that lost their underlying PersistentVolume. The claim was bound to a PersistentVolume and this volume does not exist any longer and all data on it was lost.\n - `\"Pending\"` used for PersistentVolumeClaims that are not yet bound"},
    resize_status: {key: "resizeStatus", accessor: "resize_status", kind: "String", nilable: true, default: nil, read_only: false, description: "ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature."},
  )]
  class Api::Core::V1::PersistentVolumeClaimStatus < ::K8S::Types::Api::Core::V1::PersistentVolumeClaimStatus::Instance
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimStatus
    include ::K8S::Kubernetes::Object

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

    # The storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    def allocated_resources : ::Hash(String, ::Int32 | ::String)?
      self.["allocatedResources"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def allocated_resources! : ::Hash(String, ::Int32 | ::String)
      self.["allocatedResources"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def allocated_resources? : ::Hash(String, ::Int32 | ::String)?
      self.["allocatedResources"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def allocated_resources=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["allocatedResources"] = value
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
    #
    # Possible enum values:
    #  - `"Bound"` used for PersistentVolumeClaims that are bound
    #  - `"Lost"` used for PersistentVolumeClaims that lost their underlying PersistentVolume. The claim was bound to a PersistentVolume and this volume does not exist any longer and all data on it was lost.
    #  - `"Pending"` used for PersistentVolumeClaims that are not yet bound
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

    # ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    def resize_status : String?
      self.["resizeStatus"].as(String?)
    end

    # :ditto:
    def resize_status! : String
      self.["resizeStatus"].as(String?).not_nil!
    end

    # :ditto:
    def resize_status? : String?
      self.["resizeStatus"]?.as(String?)
    end

    # :ditto:
    def resize_status=(value : String?)
      self.["resizeStatus"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "allocatedResources", accessor: "allocated_resources", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::PersistentVolumeClaimCondition) },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
        { key: "resizeStatus", accessor: "resize_status", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
