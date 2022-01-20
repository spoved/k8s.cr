# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentSource; end

module K8S
  # Namespace holding the types for `Api::Storage::V1alpha1::VolumeAttachmentSource`.
  module Types::Api::Storage::V1alpha1::VolumeAttachmentSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Name of the persistent volume to attach.
    abstract def persistent_volume_name : String?
    # :ditto:
    abstract def persistent_volume_name! : String
    # :ditto:
    abstract def persistent_volume_name? : String?
    # :ditto:
    abstract def persistent_volume_name=(value : String?)
  end

  # VolumeAttachmentSource represents a volume that should be attached. Right now only PersistenVolumes can be attached via external attacher, in future we may allow also inline volumes in pods. Exactly one member can be set.
  @[::K8S::Properties(
    persistent_volume_name: {key: "persistentVolumeName", accessor: "persistent_volume_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of the persistent volume to attach.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1alpha1::VolumeAttachmentSource < ::K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentSource::Instance
    include ::K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentSource
    include ::K8S::Kubernetes::Object

    # Name of the persistent volume to attach.
    def persistent_volume_name : String?
      self.["persistentVolumeName"].as(String?)
    end

    # :ditto:
    def persistent_volume_name! : String
      self.["persistentVolumeName"].as(String?).not_nil!
    end

    # :ditto:
    def persistent_volume_name? : String?
      self.["persistentVolumeName"]?.as(String?)
    end

    # :ditto:
    def persistent_volume_name=(value : String?)
      self.["persistentVolumeName"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "persistentVolumeName", accessor: "persistent_volume_name", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
