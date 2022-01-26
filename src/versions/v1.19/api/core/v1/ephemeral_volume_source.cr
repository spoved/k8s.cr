# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EphemeralVolumeSource; end

require "./persistent_volume_claim_template"

module K8S
  # Namespace holding the types for `Api::Core::V1::EphemeralVolumeSource`.
  module Types::Api::Core::V1::EphemeralVolumeSource
    # Specifies a read-only configuration for the volume. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
    #
    # An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
    #
    # This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
    #
    # Required, must not be nil.
    abstract def volume_claim_template : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?
    # :ditto:
    abstract def volume_claim_template! : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate
    # :ditto:
    abstract def volume_claim_template? : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?
    # :ditto:
    abstract def volume_claim_template=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?)
  end

  # Represents an ephemeral volume that is handled by a normal storage driver.
  @[::K8S::Properties(
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Specifies a read-only configuration for the volume. Defaults to false [(read/write).]((read/write).)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_claim_template: {key: "volumeClaimTemplate", accessor: "volume_claim_template", kind: "::K8S::Api::Core::V1::PersistentVolumeClaimTemplate", nilable: true, default: nil, read_only: false, description: "Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).\n\nAn existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.\n\nThis field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.\n\nRequired, must not be nil.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EphemeralVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EphemeralVolumeSource

    # Specifies a read-only configuration for the volume. Defaults to false [[(read/write).]((read/write).)]([(read/write).]((read/write).))
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

    # Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
    #
    # An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
    #
    # This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
    #
    # Required, must not be nil.
    def volume_claim_template : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?
      self.["volumeClaimTemplate"].as(::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?)
    end

    # :ditto:
    def volume_claim_template! : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate
      self.["volumeClaimTemplate"].as(::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?).not_nil!
    end

    # :ditto:
    def volume_claim_template? : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?
      self.["volumeClaimTemplate"]?.as(::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?)
    end

    # :ditto:
    def volume_claim_template=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate?)
      self.["volumeClaimTemplate"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "volumeClaimTemplate", accessor: "volume_claim_template", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeClaimTemplate },
      ])
end
  end
end
