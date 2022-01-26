# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::FCVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::FCVolumeSource`.
  module Types::Api::Core::V1::FCVolumeSource
    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # Optional: FC target lun number
    abstract def lun : Int32?
    # :ditto:
    abstract def lun! : Int32
    # :ditto:
    abstract def lun? : Int32?
    # :ditto:
    abstract def lun=(value : Int32?)
    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # Optional: FC target worldwide names (WWNs)
    abstract def target_wwns : ::Array(String)?
    # :ditto:
    abstract def target_wwns! : ::Array(String)
    # :ditto:
    abstract def target_wwns? : ::Array(String)?
    # :ditto:
    abstract def target_wwns=(value : ::Array(String)?)
    # Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
    abstract def wwids : ::Array(String)?
    # :ditto:
    abstract def wwids! : ::Array(String)
    # :ditto:
    abstract def wwids? : ::Array(String)?
    # :ditto:
    abstract def wwids=(value : ::Array(String)?)
  end

  # Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as [read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.](read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    lun: {key: "lun", accessor: "lun", kind: "Int32", nilable: true, default: nil, read_only: false, description: "Optional: FC target lun number", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Optional: Defaults to false [(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_wwns: {key: "targetWWNs", accessor: "target_wwns", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Optional: FC target worldwide names (WWNs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    wwids: {key: "wwids", accessor: "wwids", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::FCVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::FCVolumeSource

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

    # Optional: FC target lun number
    def lun : Int32?
      self.["lun"].as(Int32?)
    end

    # :ditto:
    def lun! : Int32
      self.["lun"].as(Int32?).not_nil!
    end

    # :ditto:
    def lun? : Int32?
      self.["lun"]?.as(Int32?)
    end

    # :ditto:
    def lun=(value : Int32?)
      self.["lun"] = value
    end

    # Optional: Defaults to false [[(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.)]([(read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.]((read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.))
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

    # Optional: FC target worldwide names (WWNs)
    def target_wwns : ::Array(String)?
      self.["targetWWNs"].as(::Array(String)?)
    end

    # :ditto:
    def target_wwns! : ::Array(String)
      self.["targetWWNs"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def target_wwns? : ::Array(String)?
      self.["targetWWNs"]?.as(::Array(String)?)
    end

    # :ditto:
    def target_wwns=(value : ::Array(String)?)
      self.["targetWWNs"] = value
    end

    # Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
    def wwids : ::Array(String)?
      self.["wwids"].as(::Array(String)?)
    end

    # :ditto:
    def wwids! : ::Array(String)
      self.["wwids"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def wwids? : ::Array(String)?
      self.["wwids"]?.as(::Array(String)?)
    end

    # :ditto:
    def wwids=(value : ::Array(String)?)
      self.["wwids"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "lun", accessor: "lun", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "targetWWNs", accessor: "target_wwns", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "wwids", accessor: "wwids", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
