# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimVolumeSource`.
  module Types::Api::Core::V1::PersistentVolumeClaimVolumeSource
    # ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims))
    abstract def claim_name : String?
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
    abstract def read_only=(value : ::Bool)
  end

  # PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
  @[::K8S::Properties(
    claim_name: {key: "claimName", accessor: "claim_name", kind: "String", nilable: false, default: nil, read_only: false, description: "ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Will force the ReadOnly setting in VolumeMounts. Default false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimVolumeSource
    k8s_object_accessor("claimName", claim_name : String, false, false, "ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Will force the ReadOnly setting in VolumeMounts. Default false.")

    def initialize(*, claim_name : String? = nil, read_only : ::Bool? = nil)
      super()
      self.["claimName"] = claim_name
      self.["readOnly"] = read_only
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "claimName", accessor: "claim_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
    ])
  end
end
