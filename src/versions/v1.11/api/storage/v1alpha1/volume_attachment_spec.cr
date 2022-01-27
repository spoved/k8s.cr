# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentSpec; end

require "./volume_attachment_source"

module K8S
  # Namespace holding the types for `Api::Storage::V1alpha1::VolumeAttachmentSpec`.
  module Types::Api::Storage::V1alpha1::VolumeAttachmentSpec
    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    abstract def attacher : String?
    # :ditto:
    abstract def attacher! : String
    # :ditto:
    abstract def attacher? : String?
    # :ditto:
    abstract def attacher=(value : String)
    # The node that the volume should be attached to.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String)
    # Source represents the volume that should be attached.
    abstract def source : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource?
    # :ditto:
    abstract def source! : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource
    # :ditto:
    abstract def source? : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource?
    # :ditto:
    abstract def source=(value : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource)
  end

  # VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  @[::K8S::Properties(
    attacher: {key: "attacher", accessor: "attacher", kind: "String", nilable: false, default: nil, read_only: false, description: "Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: false, default: nil, read_only: false, description: "The node that the volume should be attached to.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    source: {key: "source", accessor: "source", kind: "::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource", nilable: false, default: nil, read_only: false, description: "Source represents the volume that should be attached.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1alpha1::VolumeAttachmentSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentSpec
    k8s_object_accessor("attacher", attacher : String, false, false, "Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().")
    k8s_object_accessor("nodeName", node_name : String, false, false, "The node that the volume should be attached to.")
    k8s_object_accessor("source", source : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource, false, false, "Source represents the volume that should be attached.")

    def initialize(*, attacher : String? = nil, node_name : String? = nil, source : ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource? = nil)
      super()
      self.["attacher"] = attacher
      self.["nodeName"] = node_name
      self.["source"] = source
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "attacher", accessor: "attacher", nilable: false, read_only: false, default: nil, kind: String},
      {key: "nodeName", accessor: "node_name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "source", accessor: "source", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1alpha1::VolumeAttachmentSource},
    ])
  end
end
