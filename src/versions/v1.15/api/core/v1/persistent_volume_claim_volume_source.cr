# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimVolumeSource`.
  module Types::Api::Core::V1::PersistentVolumeClaimVolumeSource
    # ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims))
    abstract def claim_name : String
    # :ditto:
    abstract def claim_name! : String
    # :ditto:
    abstract def claim_name? : String?
    # :ditto:
    abstract def claim_name=(value : String)
    # Will force the ReadOnly setting in VolumeMounts. Default false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
  end

  # PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
  @[::K8S::Properties(
    claim_name: {key: "claimName", accessor: "claim_name", kind: "String", nilable: false, default: nil, read_only: false, description: "ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Will force the ReadOnly setting in VolumeMounts. Default false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimVolumeSource

    # ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims))
    def claim_name : String
      self.["claimName"].as(String)
    end

    # :ditto:
    def claim_name! : String
      self.["claimName"].as(String).not_nil!
    end

    # :ditto:
    def claim_name? : String?
      self.["claimName"]?.as(String?)
    end

    # :ditto:
    def claim_name=(value : String)
      self.["claimName"] = value
    end

    # Will force the ReadOnly setting in VolumeMounts. Default false.
    def read_only : ::Bool?
      self.["readOnly"].as(::Bool?)
    end

    # :ditto:
    def read_only! : ::Bool
      self.["readOnly"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only? : ::Bool?
      self.["readOnly"]?.as(::Bool?)
    end

    # :ditto:
    def read_only=(value : ::Bool?)
      self.["readOnly"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "claimName", accessor: "claim_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
