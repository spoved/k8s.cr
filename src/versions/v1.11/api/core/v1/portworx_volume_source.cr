# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PortworxVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PortworxVolumeSource`.
  module Types::Api::Core::V1::PortworxVolumeSource
    # FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # VolumeID uniquely identifies a Portworx volume
    abstract def volume_id : String?
    # :ditto:
    abstract def volume_id! : String
    # :ditto:
    abstract def volume_id? : String?
    # :ditto:
    abstract def volume_id=(value : String)
  end

  # PortworxVolumeSource represents a Portworx volume resource.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_id: {key: "volumeID", accessor: "volume_id", kind: "String", nilable: false, default: nil, read_only: false, description: "VolumeID uniquely identifies a Portworx volume", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PortworxVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PortworxVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified.")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)")
    k8s_object_accessor("volumeID", volume_id : String, false, false, "VolumeID uniquely identifies a Portworx volume")

    def initialize(*, fs_type : String? = nil, read_only : ::Bool? = nil, volume_id : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["readOnly"] = read_only
      self.["volumeID"] = volume_id
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "volumeID", accessor: "volume_id", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
