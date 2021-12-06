# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as [read/write once. ISCSI volumes support ownership management and SELinux relabeling.](read/write once. ISCSI volumes support ownership management and SELinux relabeling.)
  @[::K8S::Properties(
    chap_auth_discovery: {type: Bool, nilable: true, key: "chapAuthDiscovery", getter: false, setter: false},
    chap_auth_session: {type: Bool, nilable: true, key: "chapAuthSession", getter: false, setter: false},
    fs_type: {type: String, nilable: true, key: "fsType", getter: false, setter: false},
    initiator_name: {type: String, nilable: true, key: "initiatorName", getter: false, setter: false},
    iqn: {type: String, nilable: false, key: "iqn", getter: false, setter: false},
    iscsi_interface: {type: String, nilable: true, key: "iscsiInterface", getter: false, setter: false},
    lun: {type: Int32, nilable: false, key: "lun", getter: false, setter: false},
    portals: {type: Array(String), nilable: true, key: "portals", getter: false, setter: false},
    read_only: {type: Bool, nilable: true, key: "readOnly", getter: false, setter: false},
    secret_ref: {type: Api::Core::V1::SecretReference, nilable: true, key: "secretRef", getter: false, setter: false},
    target_portal: {type: String, nilable: false, key: "targetPortal", getter: false, setter: false},
  )]
  class Api::Core::V1::ISCSIPersistentVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # whether support iSCSI Discovery CHAP authentication
    @[::JSON::Field(key: "chapAuthDiscovery", emit_null: false)]
    @[::YAML::Field(key: "chapAuthDiscovery", emit_null: false)]
    property chap_auth_discovery : Bool | Nil

    # whether support iSCSI Session CHAP authentication
    @[::JSON::Field(key: "chapAuthSession", emit_null: false)]
    @[::YAML::Field(key: "chapAuthSession", emit_null: false)]
    property chap_auth_session : Bool | Nil

    # Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)
    @[::JSON::Field(key: "fsType", emit_null: false)]
    @[::YAML::Field(key: "fsType", emit_null: false)]
    property fs_type : String | Nil

    # Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    @[::JSON::Field(key: "initiatorName", emit_null: false)]
    @[::YAML::Field(key: "initiatorName", emit_null: false)]
    property initiator_name : String | Nil

    # Target iSCSI Qualified Name.
    @[::JSON::Field(key: "iqn", emit_null: true)]
    @[::YAML::Field(key: "iqn", emit_null: true)]
    property iqn : String

    # iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
    @[::JSON::Field(key: "iscsiInterface", emit_null: false)]
    @[::YAML::Field(key: "iscsiInterface", emit_null: false)]
    property iscsi_interface : String | Nil

    # iSCSI Target Lun number.
    @[::JSON::Field(key: "lun", emit_null: true)]
    @[::YAML::Field(key: "lun", emit_null: true)]
    property lun : Int32

    # iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    @[::JSON::Field(key: "portals", emit_null: false)]
    @[::YAML::Field(key: "portals", emit_null: false)]
    property portals : Array(String) | Nil

    # ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @[::JSON::Field(key: "readOnly", emit_null: false)]
    @[::YAML::Field(key: "readOnly", emit_null: false)]
    property read_only : Bool | Nil

    # CHAP Secret for iSCSI target and initiator authentication
    @[::JSON::Field(key: "secretRef", emit_null: false)]
    @[::YAML::Field(key: "secretRef", emit_null: false)]
    property secret_ref : Api::Core::V1::SecretReference | Nil

    # iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    @[::JSON::Field(key: "targetPortal", emit_null: true)]
    @[::YAML::Field(key: "targetPortal", emit_null: true)]
    property target_portal : String

    def initialize(*, @iqn : String, @lun : Int32, @target_portal : String, @chap_auth_discovery : Bool | Nil = nil, @chap_auth_session : Bool | Nil = nil, @fs_type : String | Nil = nil, @initiator_name : String | Nil = nil, @iscsi_interface : String | Nil = nil, @portals : Array | Nil = nil, @read_only : Bool | Nil = nil, @secret_ref : Api::Core::V1::SecretReference | Nil = nil)
    end
  end
end
