# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::VolumeAttachmentSource; end

require "../../core/v1/persistent_volume_spec"

module K8S
  # Namespace holding the types for `Api::Storage::V1::VolumeAttachmentSource`.
  module Types::Api::Storage::V1::VolumeAttachmentSource
    # inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.
    abstract def inline_volume_spec : ::K8S::Api::Core::V1::PersistentVolumeSpec?
    # :ditto:
    abstract def inline_volume_spec! : ::K8S::Api::Core::V1::PersistentVolumeSpec
    # :ditto:
    abstract def inline_volume_spec? : ::K8S::Api::Core::V1::PersistentVolumeSpec?
    # :ditto:
    abstract def inline_volume_spec=(value : ::K8S::Api::Core::V1::PersistentVolumeSpec)
    # Name of the persistent volume to attach.
    abstract def persistent_volume_name : String?
    # :ditto:
    abstract def persistent_volume_name! : String
    # :ditto:
    abstract def persistent_volume_name? : String?
    # :ditto:
    abstract def persistent_volume_name=(value : String)
  end

  # VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  @[::K8S::Properties(
    inline_volume_spec: {key: "inlineVolumeSpec", accessor: "inline_volume_spec", kind: "::K8S::Api::Core::V1::PersistentVolumeSpec", nilable: true, default: nil, read_only: false, description: "inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    persistent_volume_name: {key: "persistentVolumeName", accessor: "persistent_volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the persistent volume to attach.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1::VolumeAttachmentSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1::VolumeAttachmentSource
    k8s_object_accessor("inlineVolumeSpec", inline_volume_spec : ::K8S::Api::Core::V1::PersistentVolumeSpec, true, false, "inlineVolumeSpec contains all the information necessary to attach a persistent volume defined by a pod's inline VolumeSource. This field is populated only for the CSIMigration feature. It contains translated fields from a pod's inline VolumeSource to a PersistentVolumeSpec. This field is alpha-level and is only honored by servers that enabled the CSIMigration feature.")
    k8s_object_accessor("persistentVolumeName", persistent_volume_name : String, true, false, "Name of the persistent volume to attach.")

    def initialize(*, inline_volume_spec : ::K8S::Api::Core::V1::PersistentVolumeSpec? = nil, persistent_volume_name : String? = nil)
      super()
      self.["inlineVolumeSpec"] = inline_volume_spec
      self.["persistentVolumeName"] = persistent_volume_name
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "inlineVolumeSpec", accessor: "inline_volume_spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeSpec},
      {key: "persistentVolumeName", accessor: "persistent_volume_name", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
