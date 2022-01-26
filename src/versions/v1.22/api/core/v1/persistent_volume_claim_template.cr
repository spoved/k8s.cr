# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeClaimTemplate; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./persistent_volume_claim_spec"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeClaimTemplate`.
  module Types::Api::Core::V1::PersistentVolumeClaimTemplate
    # May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
    abstract def spec : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec
    # :ditto:
    abstract def spec! : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec)
  end

  # PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
  @[::K8S::Properties(
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Core::V1::PersistentVolumeClaimSpec", nilable: false, default: nil, read_only: false, description: "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeClaimTemplate < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeClaimTemplate

    # May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
    def spec : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec
      self.["spec"].as(::K8S::Api::Core::V1::PersistentVolumeClaimSpec)
    end

    # :ditto:
    def spec! : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec
      self.["spec"].as(::K8S::Api::Core::V1::PersistentVolumeClaimSpec).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec?
      self.["spec"]?.as(::K8S::Api::Core::V1::PersistentVolumeClaimSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimSpec)
      self.["spec"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeClaimSpec },
      ])
end
  end
end
