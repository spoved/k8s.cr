# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./secret_reference"

::K8S::Kubernetes::Resource.define_object("ISCSIPersistentVolumeSource",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "chap_auth_discovery", kind: ::Bool, key: "chapAuthDiscovery", nilable: true, read_only: false, description: "chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication"},
    {name: "chap_auth_session", kind: ::Bool, key: "chapAuthSession", nilable: true, read_only: false, description: "chapAuthSession defines whether support iSCSI Session CHAP authentication"},
    {name: "fs_type", kind: String, key: "fsType", nilable: true, read_only: false, description: "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: [https://kubernetes.io/docs/concepts/storage/volumes#iscsi](https://kubernetes.io/docs/concepts/storage/volumes#iscsi)"},
    {name: "initiator_name", kind: String, key: "initiatorName", nilable: true, read_only: false, description: "initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."},
    {name: "iqn", kind: String, key: "iqn", nilable: false, read_only: false, description: "iqn is Target iSCSI Qualified Name."},
    {name: "iscsi_interface", kind: String, key: "iscsiInterface", nilable: true, read_only: false, description: "iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."},
    {name: "lun", kind: Int32, key: "lun", nilable: false, read_only: false, description: "lun is iSCSI Target Lun number."},
    {name: "portals", kind: ::Array(String), key: "portals", nilable: true, read_only: false, description: "portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},
    {name: "read_only", kind: ::Bool, key: "readOnly", nilable: true, read_only: false, description: "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."},
    {name: "secret_ref", kind: ::K8S::Api::Core::V1::SecretReference, key: "secretRef", nilable: true, read_only: false, description: "secretRef is the CHAP Secret for iSCSI target and initiator authentication"},
    {name: "target_portal", kind: String, key: "targetPortal", nilable: false, read_only: false, description: "targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."},

  ]
)
