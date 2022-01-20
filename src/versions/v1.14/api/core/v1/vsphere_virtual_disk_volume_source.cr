# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::VsphereVirtualDiskVolumeSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::VsphereVirtualDiskVolumeSource`.
  module Types::Api::Core::V1::VsphereVirtualDiskVolumeSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    abstract def storage_policy_id : String?
    # :ditto:
    abstract def storage_policy_id! : String
    # :ditto:
    abstract def storage_policy_id? : String?
    # :ditto:
    abstract def storage_policy_id=(value : String?)
    # Storage Policy Based Management (SPBM) profile name.
    abstract def storage_policy_name : String?
    # :ditto:
    abstract def storage_policy_name! : String
    # :ditto:
    abstract def storage_policy_name? : String?
    # :ditto:
    abstract def storage_policy_name=(value : String?)
    # Path that identifies vSphere volume vmdk
    abstract def volume_path : String
    # :ditto:
    abstract def volume_path! : String
    # :ditto:
    abstract def volume_path? : String?
    # :ditto:
    abstract def volume_path=(value : String)
  end

  # Represents a vSphere volume resource.
  @[::K8S::Properties(
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_policy_id: {key: "storagePolicyID", accessor: "storage_policy_id", kind: "String", nilable: true, default: nil, read_only: false, description: "Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_policy_name: {key: "storagePolicyName", accessor: "storage_policy_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Storage Policy Based Management (SPBM) profile name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_path: {key: "volumePath", accessor: "volume_path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path that identifies vSphere volume vmdk", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::VsphereVirtualDiskVolumeSource < ::K8S::Types::Api::Core::V1::VsphereVirtualDiskVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::VsphereVirtualDiskVolumeSource
    include ::K8S::Kubernetes::Object

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

    # Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    def storage_policy_id : String?
      self.["storagePolicyID"].as(String?)
    end

    # :ditto:
    def storage_policy_id! : String
      self.["storagePolicyID"].as(String?).not_nil!
    end

    # :ditto:
    def storage_policy_id? : String?
      self.["storagePolicyID"]?.as(String?)
    end

    # :ditto:
    def storage_policy_id=(value : String?)
      self.["storagePolicyID"] = value
    end

    # Storage Policy Based Management (SPBM) profile name.
    def storage_policy_name : String?
      self.["storagePolicyName"].as(String?)
    end

    # :ditto:
    def storage_policy_name! : String
      self.["storagePolicyName"].as(String?).not_nil!
    end

    # :ditto:
    def storage_policy_name? : String?
      self.["storagePolicyName"]?.as(String?)
    end

    # :ditto:
    def storage_policy_name=(value : String?)
      self.["storagePolicyName"] = value
    end

    # Path that identifies vSphere volume vmdk
    def volume_path : String
      self.["volumePath"].as(String)
    end

    # :ditto:
    def volume_path! : String
      self.["volumePath"].as(String).not_nil!
    end

    # :ditto:
    def volume_path? : String?
      self.["volumePath"]?.as(String?)
    end

    # :ditto:
    def volume_path=(value : String)
      self.["volumePath"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "storagePolicyID", accessor: "storage_policy_id", nilable: true, read_only: false, default: nil, kind: String },
        { key: "storagePolicyName", accessor: "storage_policy_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "volumePath", accessor: "volume_path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
