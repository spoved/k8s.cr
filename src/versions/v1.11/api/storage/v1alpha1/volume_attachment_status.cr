# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentStatus; end

require "./volume_error"

module K8S
  # Namespace holding the types for `Api::Storage::V1alpha1::VolumeAttachmentStatus`.
  module Types::Api::Storage::V1alpha1::VolumeAttachmentStatus
    # The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    abstract def attach_error : ::K8S::Api::Storage::V1alpha1::VolumeError?
    # :ditto:
    abstract def attach_error! : ::K8S::Api::Storage::V1alpha1::VolumeError
    # :ditto:
    abstract def attach_error? : ::K8S::Api::Storage::V1alpha1::VolumeError?
    # :ditto:
    abstract def attach_error=(value : ::K8S::Api::Storage::V1alpha1::VolumeError?)
    # Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    abstract def attached : ::Bool
    # :ditto:
    abstract def attached! : ::Bool
    # :ditto:
    abstract def attached? : ::Bool?
    # :ditto:
    abstract def attached=(value : ::Bool)
    # Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    abstract def attachment_metadata : ::Hash(String, String)?
    # :ditto:
    abstract def attachment_metadata! : ::Hash(String, String)
    # :ditto:
    abstract def attachment_metadata? : ::Hash(String, String)?
    # :ditto:
    abstract def attachment_metadata=(value : ::Hash(String, String)?)
    # The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
    abstract def detach_error : ::K8S::Api::Storage::V1alpha1::VolumeError?
    # :ditto:
    abstract def detach_error! : ::K8S::Api::Storage::V1alpha1::VolumeError
    # :ditto:
    abstract def detach_error? : ::K8S::Api::Storage::V1alpha1::VolumeError?
    # :ditto:
    abstract def detach_error=(value : ::K8S::Api::Storage::V1alpha1::VolumeError?)
  end

  # VolumeAttachmentStatus is the status of a VolumeAttachment request.
  @[::K8S::Properties(
    attach_error: {key: "attachError", accessor: "attach_error", kind: "::K8S::Api::Storage::V1alpha1::VolumeError", nilable: true, default: nil, read_only: false, description: "The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    attached: {key: "attached", accessor: "attached", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    attachment_metadata: {key: "attachmentMetadata", accessor: "attachment_metadata", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    detach_error: {key: "detachError", accessor: "detach_error", kind: "::K8S::Api::Storage::V1alpha1::VolumeError", nilable: true, default: nil, read_only: false, description: "The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1alpha1::VolumeAttachmentStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Storage::V1alpha1::VolumeAttachmentStatus

    # The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    def attach_error : ::K8S::Api::Storage::V1alpha1::VolumeError?
      self.["attachError"].as(::K8S::Api::Storage::V1alpha1::VolumeError?)
    end

    # :ditto:
    def attach_error! : ::K8S::Api::Storage::V1alpha1::VolumeError
      self.["attachError"].as(::K8S::Api::Storage::V1alpha1::VolumeError?).not_nil!
    end

    # :ditto:
    def attach_error? : ::K8S::Api::Storage::V1alpha1::VolumeError?
      self.["attachError"]?.as(::K8S::Api::Storage::V1alpha1::VolumeError?)
    end

    # :ditto:
    def attach_error=(value : ::K8S::Api::Storage::V1alpha1::VolumeError?)
      self.["attachError"] = value
    end

    # Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    def attached : ::Bool
      self.["attached"].as(::Bool)
    end

    # :ditto:
    def attached! : ::Bool
      self.["attached"].as(::Bool).not_nil!
    end

    # :ditto:
    def attached? : ::Bool?
      self.["attached"]?.as(::Bool?)
    end

    # :ditto:
    def attached=(value : ::Bool)
      self.["attached"] = value
    end

    # Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    def attachment_metadata : ::Hash(String, String)?
      self.["attachmentMetadata"].as(::Hash(String, String)?)
    end

    # :ditto:
    def attachment_metadata! : ::Hash(String, String)
      self.["attachmentMetadata"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def attachment_metadata? : ::Hash(String, String)?
      self.["attachmentMetadata"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def attachment_metadata=(value : ::Hash(String, String)?)
      self.["attachmentMetadata"] = value
    end

    # The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
    def detach_error : ::K8S::Api::Storage::V1alpha1::VolumeError?
      self.["detachError"].as(::K8S::Api::Storage::V1alpha1::VolumeError?)
    end

    # :ditto:
    def detach_error! : ::K8S::Api::Storage::V1alpha1::VolumeError
      self.["detachError"].as(::K8S::Api::Storage::V1alpha1::VolumeError?).not_nil!
    end

    # :ditto:
    def detach_error? : ::K8S::Api::Storage::V1alpha1::VolumeError?
      self.["detachError"]?.as(::K8S::Api::Storage::V1alpha1::VolumeError?)
    end

    # :ditto:
    def detach_error=(value : ::K8S::Api::Storage::V1alpha1::VolumeError?)
      self.["detachError"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "attachError", accessor: "attach_error", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1alpha1::VolumeError },
        { key: "attached", accessor: "attached", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "attachmentMetadata", accessor: "attachment_metadata", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "detachError", accessor: "detach_error", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Storage::V1alpha1::VolumeError },
      ])
end
  end
end
