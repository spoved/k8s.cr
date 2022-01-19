# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LocalVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::LocalVolumeSource`.
  module Types::Api::Core::V1::LocalVolumeSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    abstract def path : String
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
  end

  # Local represents directly-attached storage with node affinity (Beta feature)
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a fileystem if unspecified."},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...)."},
  )]
  class Api::Core::V1::LocalVolumeSource < ::K8S::Types::Api::Core::V1::LocalVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::LocalVolumeSource
    include ::K8S::Kubernetes::Object

    # Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
    def fs_type : String?
      self.["fsType"].as(String?)
    end

    # :ditto:
    def fs_type! : String
      self.["fsType"].as(String?).not_nil!
    end

    # :ditto:
    def fs_type? : String?
      self.["fsType"]?.as(String?)
    end

    # :ditto:
    def fs_type=(value : String?)
      self.["fsType"] = value
    end

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    def path : String
      self.["path"].as(String)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String)
      self.["path"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
