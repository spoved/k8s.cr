# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ISCSIVolumeSource; end

require "./local_object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::ISCSIVolumeSource`.
  module Types::Api::Core::V1::ISCSIVolumeSource
    # whether support iSCSI Discovery CHAP authentication
    abstract def chap_auth_discovery : ::Bool?
    # :ditto:
    abstract def chap_auth_discovery! : ::Bool
    # :ditto:
    abstract def chap_auth_discovery? : ::Bool?
    # :ditto:
    abstract def chap_auth_discovery=(value : ::Bool)
    # whether support iSCSI Session CHAP authentication
    abstract def chap_auth_session : ::Bool?
    # :ditto:
    abstract def chap_auth_session! : ::Bool
    # :ditto:
    abstract def chap_auth_session? : ::Bool?
    # :ditto:
    abstract def chap_auth_session=(value : ::Bool)
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)](https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String)
    # Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    abstract def initiator_name : String?
    # :ditto:
    abstract def initiator_name! : String
    # :ditto:
    abstract def initiator_name? : String?
    # :ditto:
    abstract def initiator_name=(value : String)
    # Target iSCSI Qualified Name.
    abstract def iqn : String?
    # :ditto:
    abstract def iqn! : String
    # :ditto:
    abstract def iqn? : String?
    # :ditto:
    abstract def iqn=(value : String)
    # iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
    abstract def iscsi_interface : String?
    # :ditto:
    abstract def iscsi_interface! : String
    # :ditto:
    abstract def iscsi_interface? : String?
    # :ditto:
    abstract def iscsi_interface=(value : String)
    # iSCSI Target Lun number.
    abstract def lun : Int32?
    # :ditto:
    abstract def lun! : Int32
    # :ditto:
    abstract def lun? : Int32?
    # :ditto:
    abstract def lun=(value : Int32)
    # iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    abstract def portals : ::Array(String)?
    # :ditto:
    abstract def portals! : ::Array(String)
    # :ditto:
    abstract def portals? : ::Array(String)?
    # :ditto:
    abstract def portals=(value : ::Array(String))
    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool)
    # CHAP Secret for iSCSI target and initiator authentication
    abstract def secret_ref : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::LocalObjectReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::LocalObjectReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::LocalObjectReference)
    # iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    abstract def target_portal : String?
    # :ditto:
    abstract def target_portal! : String
    # :ditto:
    abstract def target_portal? : String?
    # :ditto:
    abstract def target_portal=(value : String)
  end

  # Represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    chap_auth_discovery: {key: "chapAuthDiscovery", accessor: "chap_auth_discovery", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "whether support iSCSI Discovery CHAP authentication", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    chap_auth_session: {key: "chapAuthSession", accessor: "chap_auth_session", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "whether support iSCSI Session CHAP authentication", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    initiator_name: {key: "initiatorName", accessor: "initiator_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    iqn: {key: "iqn", accessor: "iqn", kind: "String", nilable: false, default: nil, read_only: false, description: "Target iSCSI Qualified Name.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    iscsi_interface: {key: "iscsiInterface", accessor: "iscsi_interface", kind: "String", nilable: true, default: nil, read_only: false, description: "iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    lun: {key: "lun", accessor: "lun", kind: "Int32", nilable: false, default: nil, read_only: false, description: "iSCSI Target Lun number.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    portals: {key: "portals", accessor: "portals", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::LocalObjectReference", nilable: true, default: nil, read_only: false, description: "CHAP Secret for iSCSI target and initiator authentication", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_portal: {key: "targetPortal", accessor: "target_portal", kind: "String", nilable: false, default: nil, read_only: false, description: "iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ISCSIVolumeSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ISCSIVolumeSource
    k8s_object_accessor("chapAuthDiscovery", chap_auth_discovery : ::Bool, true, false, "whether support iSCSI Discovery CHAP authentication")
    k8s_object_accessor("chapAuthSession", chap_auth_session : ::Bool, true, false, "whether support iSCSI Session CHAP authentication")
    k8s_object_accessor("fsType", fs_type : String, true, false, "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)")
    k8s_object_accessor("initiatorName", initiator_name : String, true, false, "Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.")
    k8s_object_accessor("iqn", iqn : String, false, false, "Target iSCSI Qualified Name.")
    k8s_object_accessor("iscsiInterface", iscsi_interface : String, true, false, "iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).")
    k8s_object_accessor("lun", lun : Int32, false, false, "iSCSI Target Lun number.")
    k8s_object_accessor("portals", portals : ::Array(String), true, false, "iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).")
    k8s_object_accessor("readOnly", read_only : ::Bool, true, false, "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.")
    k8s_object_accessor("secretRef", secret_ref : ::K8S::Api::Core::V1::LocalObjectReference, true, false, "CHAP Secret for iSCSI target and initiator authentication")
    k8s_object_accessor("targetPortal", target_portal : String, false, false, "iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).")

    def initialize(*, chap_auth_discovery : ::Bool? = nil, chap_auth_session : ::Bool? = nil, fs_type : String? = nil, initiator_name : String? = nil, iqn : String? = nil, iscsi_interface : String? = nil, lun : Int32? = nil, portals : ::Array(String)? = nil, read_only : ::Bool? = nil, secret_ref : ::K8S::Api::Core::V1::LocalObjectReference? = nil, target_portal : String? = nil)
      super()
      self.["chapAuthDiscovery"] = chap_auth_discovery
      self.["chapAuthSession"] = chap_auth_session
      self.["fsType"] = fs_type
      self.["initiatorName"] = initiator_name
      self.["iqn"] = iqn
      self.["iscsiInterface"] = iscsi_interface
      self.["lun"] = lun
      self.["portals"] = portals
      self.["readOnly"] = read_only
      self.["secretRef"] = secret_ref
      self.["targetPortal"] = target_portal
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "chapAuthDiscovery", accessor: "chap_auth_discovery", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "chapAuthSession", accessor: "chap_auth_session", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String},
      {key: "initiatorName", accessor: "initiator_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "iqn", accessor: "iqn", nilable: false, read_only: false, default: nil, kind: String},
      {key: "iscsiInterface", accessor: "iscsi_interface", nilable: true, read_only: false, default: nil, kind: String},
      {key: "lun", accessor: "lun", nilable: false, read_only: false, default: nil, kind: Int32},
      {key: "portals", accessor: "portals", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalObjectReference},
      {key: "targetPortal", accessor: "target_portal", nilable: false, read_only: false, default: nil, kind: String},
    ])
  end
end
