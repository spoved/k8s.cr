# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::AzureDiskVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::AzureDiskVolumeSource`.
  module Types::Api::Core::V1::AzureDiskVolumeSource
    # Host Caching mode: None, Read Only, Read Write.
    abstract def caching_mode : String?
    # :ditto:
    abstract def caching_mode! : String
    # :ditto:
    abstract def caching_mode? : String?
    # :ditto:
    abstract def caching_mode=(value : String?)
    # The Name of the data disk in the blob storage
    abstract def disk_name : String
    # :ditto:
    abstract def disk_name! : String
    # :ditto:
    abstract def disk_name? : String?
    # :ditto:
    abstract def disk_name=(value : String)
    # The URI the data disk in the blob storage
    abstract def disk_uri : String
    # :ditto:
    abstract def disk_uri! : String
    # :ditto:
    abstract def disk_uri? : String?
    # :ditto:
    abstract def disk_uri=(value : String)
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # :ditto:
    abstract def kind=(value : String?)
    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
  end

  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  @[::K8S::Properties(
    caching_mode: {key: "cachingMode", accessor: "caching_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "Host Caching mode: None, Read Only, Read Write.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    disk_name: {key: "diskName", accessor: "disk_name", kind: "String", nilable: false, default: nil, read_only: false, description: "The Name of the data disk in the blob storage", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    disk_uri: {key: "diskURI", accessor: "disk_uri", kind: "String", nilable: false, default: nil, read_only: false, description: "The URI the data disk in the blob storage", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: true, default: nil, read_only: false, description: "Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::AzureDiskVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::AzureDiskVolumeSource

    # Host Caching mode: None, Read Only, Read Write.
    def caching_mode : String?
      self.["cachingMode"].as(String?)
    end

    # :ditto:
    def caching_mode! : String
      self.["cachingMode"].as(String?).not_nil!
    end

    # :ditto:
    def caching_mode? : String?
      self.["cachingMode"]?.as(String?)
    end

    # :ditto:
    def caching_mode=(value : String?)
      self.["cachingMode"] = value
    end

    # The Name of the data disk in the blob storage
    def disk_name : String
      self.["diskName"].as(String)
    end

    # :ditto:
    def disk_name! : String
      self.["diskName"].as(String).not_nil!
    end

    # :ditto:
    def disk_name? : String?
      self.["diskName"]?.as(String?)
    end

    # :ditto:
    def disk_name=(value : String)
      self.["diskName"] = value
    end

    # The URI the data disk in the blob storage
    def disk_uri : String
      self.["diskURI"].as(String)
    end

    # :ditto:
    def disk_uri! : String
      self.["diskURI"].as(String).not_nil!
    end

    # :ditto:
    def disk_uri? : String?
      self.["diskURI"]?.as(String?)
    end

    # :ditto:
    def disk_uri=(value : String)
      self.["diskURI"] = value
    end

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
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

    # Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    def kind : String?
      self.["kind"].as(String?)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String?).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # :ditto:
    def kind=(value : String?)
      self.["kind"] = value
    end

    # Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    def read_only : ::Bool?
      self.["readOnly"].as(::Bool?)
    end

    # :ditto:
    def read_only! : ::Bool
      self.["readOnly"].as(::Bool?).not_nil!
    end

    # :ditto:
    def read_only? : ::Bool?
      self.["readOnly"]?.as(::Bool?)
    end

    # :ditto:
    def read_only=(value : ::Bool?)
      self.["readOnly"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "cachingMode", accessor: "caching_mode", nilable: true, read_only: false, default: nil, kind: String },
        { key: "diskName", accessor: "disk_name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "diskURI", accessor: "disk_uri", nilable: false, read_only: false, default: nil, kind: String },
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "kind", accessor: "kind", nilable: true, read_only: false, default: nil, kind: String },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
      ])
end
  end
end
