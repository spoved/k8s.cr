# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::VolumeAttachmentSpec; end

require "./volume_attachment_source"

module K8S
  # Namespace holding the types for `Api::Storage::V1::VolumeAttachmentSpec`.
  module Types::Api::Storage::V1::VolumeAttachmentSpec
    alias ValueType = String | ::K8S::Api::Storage::V1::VolumeAttachmentSource | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    abstract def attacher : String
    # :ditto:
    abstract def attacher! : String
    # :ditto:
    abstract def attacher? : String?
    # :ditto:
    abstract def attacher=(value : String)
    # The node that the volume should be attached to.
    abstract def node_name : String
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String)
    # Source represents the volume that should be attached.
    abstract def source : ::K8S::Api::Storage::V1::VolumeAttachmentSource
    # :ditto:
    abstract def source! : ::K8S::Api::Storage::V1::VolumeAttachmentSource
    # :ditto:
    abstract def source? : ::K8S::Api::Storage::V1::VolumeAttachmentSource?
    # :ditto:
    abstract def source=(value : ::K8S::Api::Storage::V1::VolumeAttachmentSource)
  end

  # VolumeAttachmentSpec is the specification of a VolumeAttachment request.
  @[::K8S::Properties(
    attacher: {key: "attacher", accessor: "attacher", kind: "String", nilable: false, default: nil, read_only: false, description: "Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName()."},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: false, default: nil, read_only: false, description: "The node that the volume should be attached to."},
    source: {key: "source", accessor: "source", kind: "::K8S::Api::Storage::V1::VolumeAttachmentSource", nilable: false, default: nil, read_only: false, description: "Source represents the volume that should be attached."},
  )]
  class Api::Storage::V1::VolumeAttachmentSpec < ::K8S::Types::Api::Storage::V1::VolumeAttachmentSpec::Instance
    include ::K8S::Types::Api::Storage::V1::VolumeAttachmentSpec
    include ::K8S::Kubernetes::Object

    # Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    def attacher : String
      self.["attacher"].as(String)
    end

    # :ditto:
    def attacher! : String
      self.["attacher"].as(String).not_nil!
    end

    # :ditto:
    def attacher? : String?
      self.["attacher"]?.as(String?)
    end

    # :ditto:
    def attacher=(value : String)
      self.["attacher"] = value
    end

    # The node that the volume should be attached to.
    def node_name : String
      self.["nodeName"].as(String)
    end

    # :ditto:
    def node_name! : String
      self.["nodeName"].as(String).not_nil!
    end

    # :ditto:
    def node_name? : String?
      self.["nodeName"]?.as(String?)
    end

    # :ditto:
    def node_name=(value : String)
      self.["nodeName"] = value
    end

    # Source represents the volume that should be attached.
    def source : ::K8S::Api::Storage::V1::VolumeAttachmentSource
      self.["source"].as(::K8S::Api::Storage::V1::VolumeAttachmentSource)
    end

    # :ditto:
    def source! : ::K8S::Api::Storage::V1::VolumeAttachmentSource
      self.["source"].as(::K8S::Api::Storage::V1::VolumeAttachmentSource).not_nil!
    end

    # :ditto:
    def source? : ::K8S::Api::Storage::V1::VolumeAttachmentSource?
      self.["source"]?.as(::K8S::Api::Storage::V1::VolumeAttachmentSource?)
    end

    # :ditto:
    def source=(value : ::K8S::Api::Storage::V1::VolumeAttachmentSource)
      self.["source"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "attacher", accessor: "attacher", nilable: false, read_only: false, default: nil, kind: String },
        { key: "nodeName", accessor: "node_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "source", accessor: "source", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1::VolumeAttachmentSource },
      ])
end
  end
end
