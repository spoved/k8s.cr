# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LocalVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::LocalVolumeSource`.
  module Types::Api::Core::V1::LocalVolumeSource
    # Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    abstract def path : String?
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
  end

  # Local represents directly-attached storage with node affinity (Beta feature)
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a fileystem if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::LocalVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::LocalVolumeSource
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a fileystem if unspecified.")
    k8s_object_accessor("path", path : String, false, false, "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).")

    def initialize(*, fs_type : String? = nil, path : String? = nil)
      super()
      self.["fsType"] = fs_type
      self.["path"] = path
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
