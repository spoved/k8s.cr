# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ISCSIPersistentVolumeSource; end

require "./secret_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::ISCSIPersistentVolumeSource`.
  module Types::Api::Core::V1::ISCSIPersistentVolumeSource
    alias ValueType = ::Bool | String | Int32 | ::Array(String) | ::K8S::Api::Core::V1::SecretReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # whether support iSCSI Discovery CHAP authentication
    abstract def chap_auth_discovery : ::Bool?
    # :ditto:
    abstract def chap_auth_discovery! : ::Bool
    # :ditto:
    abstract def chap_auth_discovery? : ::Bool?
    # :ditto:
    abstract def chap_auth_discovery=(value : ::Bool?)
    # whether support iSCSI Session CHAP authentication
    abstract def chap_auth_session : ::Bool?
    # :ditto:
    abstract def chap_auth_session! : ::Bool
    # :ditto:
    abstract def chap_auth_session? : ::Bool?
    # :ditto:
    abstract def chap_auth_session=(value : ::Bool?)
    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)](https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi))
    abstract def fs_type : String?
    # :ditto:
    abstract def fs_type! : String
    # :ditto:
    abstract def fs_type? : String?
    # :ditto:
    abstract def fs_type=(value : String?)
    # Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    abstract def initiator_name : String?
    # :ditto:
    abstract def initiator_name! : String
    # :ditto:
    abstract def initiator_name? : String?
    # :ditto:
    abstract def initiator_name=(value : String?)
    # Target iSCSI Qualified Name.
    abstract def iqn : String
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
    abstract def iscsi_interface=(value : String?)
    # iSCSI Target Lun number.
    abstract def lun : Int32
    # :ditto:
    abstract def lun! : Int32
    # :ditto:
    abstract def lun? : Int32?
    # :ditto:
    abstract def lun=(value : Int32)
    # iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    abstract def portals : ::Array(String)?
    # :ditto:
    abstract def portals! : ::Array(String)
    # :ditto:
    abstract def portals? : ::Array(String)?
    # :ditto:
    abstract def portals=(value : ::Array(String)?)
    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    abstract def read_only : ::Bool?
    # :ditto:
    abstract def read_only! : ::Bool
    # :ditto:
    abstract def read_only? : ::Bool?
    # :ditto:
    abstract def read_only=(value : ::Bool?)
    # CHAP Secret for iSCSI target and initiator authentication
    abstract def secret_ref : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref! : ::K8S::Api::Core::V1::SecretReference
    # :ditto:
    abstract def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
    # :ditto:
    abstract def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
    # iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    abstract def target_portal : String
    # :ditto:
    abstract def target_portal! : String
    # :ditto:
    abstract def target_portal? : String?
    # :ditto:
    abstract def target_portal=(value : String)
  end

  # ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    chap_auth_discovery: {key: "chapAuthDiscovery", accessor: "chap_auth_discovery", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "whether support iSCSI Discovery CHAP authentication"},
    chap_auth_session: {key: "chapAuthSession", accessor: "chap_auth_session", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "whether support iSCSI Session CHAP authentication"},
    fs_type: {key: "fsType", accessor: "fs_type", kind: "String", nilable: true, default: nil, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)"},
    initiator_name: {key: "initiatorName", accessor: "initiator_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."},
    iqn: {key: "iqn", accessor: "iqn", kind: "String", nilable: false, default: nil, read_only: false, description: "Target iSCSI Qualified Name."},
    iscsi_interface: {key: "iscsiInterface", accessor: "iscsi_interface", kind: "String", nilable: true, default: nil, read_only: false, description: "iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."},
    lun: {key: "lun", accessor: "lun", kind: "Int32", nilable: false, default: nil, read_only: false, description: "iSCSI Target Lun number."},
    portals: {key: "portals", accessor: "portals", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},
    read_only: {key: "readOnly", accessor: "read_only", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."},
    secret_ref: {key: "secretRef", accessor: "secret_ref", kind: "::K8S::Api::Core::V1::SecretReference", nilable: true, default: nil, read_only: false, description: "CHAP Secret for iSCSI target and initiator authentication"},
    target_portal: {key: "targetPortal", accessor: "target_portal", kind: "String", nilable: false, default: nil, read_only: false, description: "iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},
  )]
  class Api::Core::V1::ISCSIPersistentVolumeSource < ::K8S::Types::Api::Core::V1::ISCSIPersistentVolumeSource::Instance
    include ::K8S::Types::Api::Core::V1::ISCSIPersistentVolumeSource
    include ::K8S::Kubernetes::Object

    # whether support iSCSI Discovery CHAP authentication
    def chap_auth_discovery : ::Bool?
      self.["chapAuthDiscovery"].as(::Bool?)
    end

    # :ditto:
    def chap_auth_discovery! : ::Bool
      self.["chapAuthDiscovery"].as(::Bool?).not_nil!
    end

    # :ditto:
    def chap_auth_discovery? : ::Bool?
      self.["chapAuthDiscovery"]?.as(::Bool?)
    end

    # :ditto:
    def chap_auth_discovery=(value : ::Bool?)
      self.["chapAuthDiscovery"] = value
    end

    # whether support iSCSI Session CHAP authentication
    def chap_auth_session : ::Bool?
      self.["chapAuthSession"].as(::Bool?)
    end

    # :ditto:
    def chap_auth_session! : ::Bool
      self.["chapAuthSession"].as(::Bool?).not_nil!
    end

    # :ditto:
    def chap_auth_session? : ::Bool?
      self.["chapAuthSession"]?.as(::Bool?)
    end

    # :ditto:
    def chap_auth_session=(value : ::Bool?)
      self.["chapAuthSession"] = value
    end

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)](https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi))
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

    # Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    def initiator_name : String?
      self.["initiatorName"].as(String?)
    end

    # :ditto:
    def initiator_name! : String
      self.["initiatorName"].as(String?).not_nil!
    end

    # :ditto:
    def initiator_name? : String?
      self.["initiatorName"]?.as(String?)
    end

    # :ditto:
    def initiator_name=(value : String?)
      self.["initiatorName"] = value
    end

    # Target iSCSI Qualified Name.
    def iqn : String
      self.["iqn"].as(String)
    end

    # :ditto:
    def iqn! : String
      self.["iqn"].as(String).not_nil!
    end

    # :ditto:
    def iqn? : String?
      self.["iqn"]?.as(String?)
    end

    # :ditto:
    def iqn=(value : String)
      self.["iqn"] = value
    end

    # iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
    def iscsi_interface : String?
      self.["iscsiInterface"].as(String?)
    end

    # :ditto:
    def iscsi_interface! : String
      self.["iscsiInterface"].as(String?).not_nil!
    end

    # :ditto:
    def iscsi_interface? : String?
      self.["iscsiInterface"]?.as(String?)
    end

    # :ditto:
    def iscsi_interface=(value : String?)
      self.["iscsiInterface"] = value
    end

    # iSCSI Target Lun number.
    def lun : Int32
      self.["lun"].as(Int32)
    end

    # :ditto:
    def lun! : Int32
      self.["lun"].as(Int32).not_nil!
    end

    # :ditto:
    def lun? : Int32?
      self.["lun"]?.as(Int32?)
    end

    # :ditto:
    def lun=(value : Int32)
      self.["lun"] = value
    end

    # iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    def portals : ::Array(String)?
      self.["portals"].as(::Array(String)?)
    end

    # :ditto:
    def portals! : ::Array(String)
      self.["portals"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def portals? : ::Array(String)?
      self.["portals"]?.as(::Array(String)?)
    end

    # :ditto:
    def portals=(value : ::Array(String)?)
      self.["portals"] = value
    end

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
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

    # CHAP Secret for iSCSI target and initiator authentication
    def secret_ref : ::K8S::Api::Core::V1::SecretReference?
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def secret_ref! : ::K8S::Api::Core::V1::SecretReference
      self.["secretRef"].as(::K8S::Api::Core::V1::SecretReference?).not_nil!
    end

    # :ditto:
    def secret_ref? : ::K8S::Api::Core::V1::SecretReference?
      self.["secretRef"]?.as(::K8S::Api::Core::V1::SecretReference?)
    end

    # :ditto:
    def secret_ref=(value : ::K8S::Api::Core::V1::SecretReference?)
      self.["secretRef"] = value
    end

    # iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    def target_portal : String
      self.["targetPortal"].as(String)
    end

    # :ditto:
    def target_portal! : String
      self.["targetPortal"].as(String).not_nil!
    end

    # :ditto:
    def target_portal? : String?
      self.["targetPortal"]?.as(String?)
    end

    # :ditto:
    def target_portal=(value : String)
      self.["targetPortal"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "chapAuthDiscovery", accessor: "chap_auth_discovery", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "chapAuthSession", accessor: "chap_auth_session", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "fsType", accessor: "fs_type", nilable: true, read_only: false, default: nil, kind: String },
        { key: "initiatorName", accessor: "initiator_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "iqn", accessor: "iqn", nilable: false, read_only: false, default: nil, kind: String },
        { key: "iscsiInterface", accessor: "iscsi_interface", nilable: true, read_only: false, default: nil, kind: String },
        { key: "lun", accessor: "lun", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "portals", accessor: "portals", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "readOnly", accessor: "read_only", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "secretRef", accessor: "secret_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretReference },
        { key: "targetPortal", accessor: "target_portal", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
