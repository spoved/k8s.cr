# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeSpec is the specification of a persistent volume.
  @[::K8S::Properties(
    access_modes: {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
    aws_elastic_block_store: {type: Api::Core::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore", getter: false, setter: false},
    azure_disk: {type: Api::Core::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk", getter: false, setter: false},
    azure_file: {type: Api::Core::V1::AzureFilePersistentVolumeSource, nilable: true, key: "azureFile", getter: false, setter: false},
    capacity: {type: Hash(String, Int32 | String), nilable: true, key: "capacity", getter: false, setter: false},
    cephfs: {type: Api::Core::V1::CephFSPersistentVolumeSource, nilable: true, key: "cephfs", getter: false, setter: false},
    cinder: {type: Api::Core::V1::CinderPersistentVolumeSource, nilable: true, key: "cinder", getter: false, setter: false},
    claim_ref: {type: Api::Core::V1::ObjectReference, nilable: true, key: "claimRef", getter: false, setter: false},
    csi: {type: Api::Core::V1::CSIPersistentVolumeSource, nilable: true, key: "csi", getter: false, setter: false},
    fc: {type: Api::Core::V1::FCVolumeSource, nilable: true, key: "fc", getter: false, setter: false},
    flex_volume: {type: Api::Core::V1::FlexPersistentVolumeSource, nilable: true, key: "flexVolume", getter: false, setter: false},
    flocker: {type: Api::Core::V1::FlockerVolumeSource, nilable: true, key: "flocker", getter: false, setter: false},
    gce_persistent_disk: {type: Api::Core::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk", getter: false, setter: false},
    glusterfs: {type: Api::Core::V1::GlusterfsPersistentVolumeSource, nilable: true, key: "glusterfs", getter: false, setter: false},
    host_path: {type: Api::Core::V1::HostPathVolumeSource, nilable: true, key: "hostPath", getter: false, setter: false},
    iscsi: {type: Api::Core::V1::ISCSIPersistentVolumeSource, nilable: true, key: "iscsi", getter: false, setter: false},
    local: {type: Api::Core::V1::LocalVolumeSource, nilable: true, key: "local", getter: false, setter: false},
    mount_options: {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
    nfs: {type: Api::Core::V1::NFSVolumeSource, nilable: true, key: "nfs", getter: false, setter: false},
    node_affinity: {type: Api::Core::V1::VolumeNodeAffinity, nilable: true, key: "nodeAffinity", getter: false, setter: false},
    persistent_volume_reclaim_policy: {type: String, nilable: true, key: "persistentVolumeReclaimPolicy", getter: false, setter: false},
    photon_persistent_disk: {type: Api::Core::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk", getter: false, setter: false},
    portworx_volume: {type: Api::Core::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume", getter: false, setter: false},
    quobyte: {type: Api::Core::V1::QuobyteVolumeSource, nilable: true, key: "quobyte", getter: false, setter: false},
    rbd: {type: Api::Core::V1::RBDPersistentVolumeSource, nilable: true, key: "rbd", getter: false, setter: false},
    scale_io: {type: Api::Core::V1::ScaleIOPersistentVolumeSource, nilable: true, key: "scaleIO", getter: false, setter: false},
    storage_class_name: {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
    storageos: {type: Api::Core::V1::StorageOSPersistentVolumeSource, nilable: true, key: "storageos", getter: false, setter: false},
    volume_mode: {type: String, nilable: true, key: "volumeMode", getter: false, setter: false},
    vsphere_volume: {type: Api::Core::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # AccessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)
    @[::JSON::Field(key: "accessModes", emit_null: false)]
    @[::YAML::Field(key: "accessModes", emit_null: false)]
    property access_modes : Array(String) | Nil

    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    @[::JSON::Field(key: "awsElasticBlockStore", emit_null: false)]
    @[::YAML::Field(key: "awsElasticBlockStore", emit_null: false)]
    property aws_elastic_block_store : Api::Core::V1::AWSElasticBlockStoreVolumeSource | Nil

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    @[::JSON::Field(key: "azureDisk", emit_null: false)]
    @[::YAML::Field(key: "azureDisk", emit_null: false)]
    property azure_disk : Api::Core::V1::AzureDiskVolumeSource | Nil

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    @[::JSON::Field(key: "azureFile", emit_null: false)]
    @[::YAML::Field(key: "azureFile", emit_null: false)]
    property azure_file : Api::Core::V1::AzureFilePersistentVolumeSource | Nil

    # A description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    @[::JSON::Field(key: "capacity", emit_null: false)]
    @[::YAML::Field(key: "capacity", emit_null: false)]
    property capacity : Hash(String, Int32 | String) | Nil

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "cephfs", emit_null: false)]
    @[::YAML::Field(key: "cephfs", emit_null: false)]
    property cephfs : Api::Core::V1::CephFSPersistentVolumeSource | Nil

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "cinder", emit_null: false)]
    @[::YAML::Field(key: "cinder", emit_null: false)]
    property cinder : Api::Core::V1::CinderPersistentVolumeSource | Nil

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)
    @[::JSON::Field(key: "claimRef", emit_null: false)]
    @[::YAML::Field(key: "claimRef", emit_null: false)]
    property claim_ref : Api::Core::V1::ObjectReference | Nil

    # CSI represents storage that handled by an external CSI driver (Beta feature).
    @[::JSON::Field(key: "csi", emit_null: false)]
    @[::YAML::Field(key: "csi", emit_null: false)]
    property csi : Api::Core::V1::CSIPersistentVolumeSource | Nil

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    @[::JSON::Field(key: "fc", emit_null: false)]
    @[::YAML::Field(key: "fc", emit_null: false)]
    property fc : Api::Core::V1::FCVolumeSource | Nil

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)
    @[::JSON::Field(key: "flexVolume", emit_null: false)]
    @[::YAML::Field(key: "flexVolume", emit_null: false)]
    property flex_volume : Api::Core::V1::FlexPersistentVolumeSource | Nil

    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    @[::JSON::Field(key: "flocker", emit_null: false)]
    @[::YAML::Field(key: "flocker", emit_null: false)]
    property flocker : Api::Core::V1::FlockerVolumeSource | Nil

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "gcePersistentDisk", emit_null: false)]
    @[::YAML::Field(key: "gcePersistentDisk", emit_null: false)]
    property gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil

    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    @[::JSON::Field(key: "glusterfs", emit_null: false)]
    @[::YAML::Field(key: "glusterfs", emit_null: false)]
    property glusterfs : Api::Core::V1::GlusterfsPersistentVolumeSource | Nil

    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    @[::JSON::Field(key: "hostPath", emit_null: false)]
    @[::YAML::Field(key: "hostPath", emit_null: false)]
    property host_path : Api::Core::V1::HostPathVolumeSource | Nil

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    @[::JSON::Field(key: "iscsi", emit_null: false)]
    @[::YAML::Field(key: "iscsi", emit_null: false)]
    property iscsi : Api::Core::V1::ISCSIPersistentVolumeSource | Nil

    # Local represents directly-attached storage with node affinity
    @[::JSON::Field(key: "local", emit_null: false)]
    @[::YAML::Field(key: "local", emit_null: false)]
    property local : Api::Core::V1::LocalVolumeSource | Nil

    # A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)
    @[::JSON::Field(key: "mountOptions", emit_null: false)]
    @[::YAML::Field(key: "mountOptions", emit_null: false)]
    property mount_options : Array(String) | Nil

    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)
    @[::JSON::Field(key: "nfs", emit_null: false)]
    @[::YAML::Field(key: "nfs", emit_null: false)]
    property nfs : Api::Core::V1::NFSVolumeSource | Nil

    # NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
    @[::JSON::Field(key: "nodeAffinity", emit_null: false)]
    @[::YAML::Field(key: "nodeAffinity", emit_null: false)]
    property node_affinity : Api::Core::V1::VolumeNodeAffinity | Nil

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)
    @[::JSON::Field(key: "persistentVolumeReclaimPolicy", emit_null: false)]
    @[::YAML::Field(key: "persistentVolumeReclaimPolicy", emit_null: false)]
    property persistent_volume_reclaim_policy : String | Nil

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    @[::JSON::Field(key: "photonPersistentDisk", emit_null: false)]
    @[::YAML::Field(key: "photonPersistentDisk", emit_null: false)]
    property photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "portworxVolume", emit_null: false)]
    @[::YAML::Field(key: "portworxVolume", emit_null: false)]
    property portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "quobyte", emit_null: false)]
    @[::YAML::Field(key: "quobyte", emit_null: false)]
    property quobyte : Api::Core::V1::QuobyteVolumeSource | Nil

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    @[::JSON::Field(key: "rbd", emit_null: false)]
    @[::YAML::Field(key: "rbd", emit_null: false)]
    property rbd : Api::Core::V1::RBDPersistentVolumeSource | Nil

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @[::JSON::Field(key: "scaleIO", emit_null: false)]
    @[::YAML::Field(key: "scaleIO", emit_null: false)]
    property scale_io : Api::Core::V1::ScaleIOPersistentVolumeSource | Nil

    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    @[::JSON::Field(key: "storageClassName", emit_null: false)]
    @[::YAML::Field(key: "storageClassName", emit_null: false)]
    property storage_class_name : String | Nil

    # StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://releases.k8s.io/HEAD/examples/volumes/storageos/README.md](https://releases.k8s.io/HEAD/examples/volumes/storageos/README.md)
    @[::JSON::Field(key: "storageos", emit_null: false)]
    @[::YAML::Field(key: "storageos", emit_null: false)]
    property storageos : Api::Core::V1::StorageOSPersistentVolumeSource | Nil

    # volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec. This is a beta feature.
    @[::JSON::Field(key: "volumeMode", emit_null: false)]
    @[::YAML::Field(key: "volumeMode", emit_null: false)]
    property volume_mode : String | Nil

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "vsphereVolume", emit_null: false)]
    @[::YAML::Field(key: "vsphereVolume", emit_null: false)]
    property vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @aws_elastic_block_store : Api::Core::V1::AWSElasticBlockStoreVolumeSource | Nil = nil, @azure_disk : Api::Core::V1::AzureDiskVolumeSource | Nil = nil, @azure_file : Api::Core::V1::AzureFilePersistentVolumeSource | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @cephfs : Api::Core::V1::CephFSPersistentVolumeSource | Nil = nil, @cinder : Api::Core::V1::CinderPersistentVolumeSource | Nil = nil, @claim_ref : Api::Core::V1::ObjectReference | Nil = nil, @csi : Api::Core::V1::CSIPersistentVolumeSource | Nil = nil, @fc : Api::Core::V1::FCVolumeSource | Nil = nil, @flex_volume : Api::Core::V1::FlexPersistentVolumeSource | Nil = nil, @flocker : Api::Core::V1::FlockerVolumeSource | Nil = nil, @gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil = nil, @glusterfs : Api::Core::V1::GlusterfsPersistentVolumeSource | Nil = nil, @host_path : Api::Core::V1::HostPathVolumeSource | Nil = nil, @iscsi : Api::Core::V1::ISCSIPersistentVolumeSource | Nil = nil, @local : Api::Core::V1::LocalVolumeSource | Nil = nil, @mount_options : Array | Nil = nil, @nfs : Api::Core::V1::NFSVolumeSource | Nil = nil, @node_affinity : Api::Core::V1::VolumeNodeAffinity | Nil = nil, @persistent_volume_reclaim_policy : String | Nil = nil, @photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil = nil, @portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil = nil, @quobyte : Api::Core::V1::QuobyteVolumeSource | Nil = nil, @rbd : Api::Core::V1::RBDPersistentVolumeSource | Nil = nil, @scale_io : Api::Core::V1::ScaleIOPersistentVolumeSource | Nil = nil, @storage_class_name : String | Nil = nil, @storageos : Api::Core::V1::StorageOSPersistentVolumeSource | Nil = nil, @volume_mode : String | Nil = nil, @vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil = nil)
    end
  end
end
