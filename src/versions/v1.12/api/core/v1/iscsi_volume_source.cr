# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./local_object_reference"

::K8S::Kubernetes::Resource.define_object("ISCSIVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "chap_auth_discovery", kind: ::Bool, key: "chapAuthDiscovery", nilable: true, read_only: false, description: "whether support iSCSI Discovery CHAP authentication"},
    {name: "chap_auth_session", kind: ::Bool, key: "chapAuthSession", nilable: true, read_only: false, description: "whether support iSCSI Session CHAP authentication"},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)"},
    {name: "initiator_name", kind: String, key: "initiatorName", nilable: true, read_only: false, description: "Custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."},
    {name: "iqn", kind: String, key: "iqn", nilable: false, read_only: false, description: "Target iSCSI Qualified Name."},
    {name: "iscsi_interface", kind: String, key: "iscsiInterface", nilable: true, read_only: false, description: "iSCSI Interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."},
    {name: "lun", kind: Int32, key: "lun", nilable: false, read_only: false, description: "iSCSI Target Lun number."},
    {name: "portals", kind: ::Array(String), key: "portals", nilable: true, read_only: false, description: "iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::LocalObjectReference, key: "secretRef", nilable: true, read_only: false, description: "CHAP Secret for iSCSI target and initiator authentication"},
    {name: "target_portal", kind: String, key: "targetPortal", nilable: false, read_only: false, description: "iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},

  ]
)
