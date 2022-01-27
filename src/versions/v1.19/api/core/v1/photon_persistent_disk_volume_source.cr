# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PhotonPersistentDiskVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PhotonPersistentDiskVolumeSource`.
  module Types::Api::Core::V1::PhotonPersistentDiskVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # ID that identifies Photon Controller persistent disk
    abstract def pd_id : String?
    # :ditto:
    abstract def pd_id! : String
    # :ditto:
    abstract def pd_id? : String?
    # :ditto:
    abstract def pd_id=(value : String)
  end

  # Represents a Photon Controller persistent disk resource.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    pd_id: {key: "pdID", accessor: "pd_id", kind: "String", nilable: false, default: nil, read_only: false, description: "ID that identifies Photon Controller persistent disk", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PhotonPersistentDiskVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PhotonPersistentDiskVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.")
    k8s_object_accessor("pdID", pd_id : String, false, false, "ID that identifies Photon Controller persistent disk")

    def initialize(*, fs_type : String? = nil, pd_id : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["pdID"] = pd_id
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "pdID", accessor: "pd_id", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
