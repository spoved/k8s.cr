# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LocalVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::LocalVolumeSource`.
  module Types::Api::Core::V1::LocalVolumeSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled.
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
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled."},
  )]
  class Api::Core::V1::LocalVolumeSource < ::K8S::Types::Api::Core::V1::LocalVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::LocalVolumeSource
    include ::K8S::Kubernetes::Object

    # The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...). Directories can be represented only by PersistentVolume with VolumeMode=Filesystem. Block devices can be represented only by VolumeMode=Block, which also requires the BlockVolume alpha feature gate to be enabled.
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
        { key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
