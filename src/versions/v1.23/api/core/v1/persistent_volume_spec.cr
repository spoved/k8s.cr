# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PersistentVolumeSpec; end

require "./aws_elastic_block_store_volume_source"
require "./azure_disk_volume_source"
require "./azure_file_persistent_volume_source"
require "./ceph_fs_persistent_volume_source"
require "./cinder_persistent_volume_source"
require "./object_reference"
require "./csi_persistent_volume_source"
require "./fc_volume_source"
require "./flex_persistent_volume_source"
require "./flocker_volume_source"
require "./gce_persistent_disk_volume_source"
require "./glusterfs_persistent_volume_source"
require "./host_path_volume_source"
require "./iscsi_persistent_volume_source"
require "./local_volume_source"
require "./nfs_volume_source"
require "./volume_node_affinity"
require "./photon_persistent_disk_volume_source"
require "./portworx_volume_source"
require "./quobyte_volume_source"
require "./rbd_persistent_volume_source"
require "./scale_io_persistent_volume_source"
require "./storage_os_persistent_volume_source"
require "./vsphere_virtual_disk_volume_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::PersistentVolumeSpec`.
  module Types::Api::Core::V1::PersistentVolumeSpec
    alias ValueType = ::Array(String) | ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource | ::K8S::Api::Core::V1::AzureDiskVolumeSource | ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource | ::Hash(String, ::Int32 | ::String) | ::K8S::Api::Core::V1::CephFSPersistentVolumeSource | ::K8S::Api::Core::V1::CinderPersistentVolumeSource | ::K8S::Api::Core::V1::ObjectReference | ::K8S::Api::Core::V1::CSIPersistentVolumeSource | ::K8S::Api::Core::V1::FCVolumeSource | ::K8S::Api::Core::V1::FlexPersistentVolumeSource | ::K8S::Api::Core::V1::FlockerVolumeSource | ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource | ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource | ::K8S::Api::Core::V1::HostPathVolumeSource | ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource | ::K8S::Api::Core::V1::LocalVolumeSource | ::K8S::Api::Core::V1::NFSVolumeSource | ::K8S::Api::Core::V1::VolumeNodeAffinity | String | ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource | ::K8S::Api::Core::V1::PortworxVolumeSource | ::K8S::Api::Core::V1::QuobyteVolumeSource | ::K8S::Api::Core::V1::RBDPersistentVolumeSource | ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource | ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource | ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil
    alias Instance = ::K8S::Object(ValueType)

    # AccessModes contains all ways the volume can be mounted. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String)?)
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    abstract def aws_elastic_block_store : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
    # :ditto:
    abstract def aws_elastic_block_store! : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource
    # :ditto:
    abstract def aws_elastic_block_store? : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
    # :ditto:
    abstract def aws_elastic_block_store=(value : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?)
    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    abstract def azure_disk : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
    # :ditto:
    abstract def azure_disk! : ::K8S::Api::Core::V1::AzureDiskVolumeSource
    # :ditto:
    abstract def azure_disk? : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
    # :ditto:
    abstract def azure_disk=(value : ::K8S::Api::Core::V1::AzureDiskVolumeSource?)
    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    abstract def azure_file : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
    # :ditto:
    abstract def azure_file! : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource
    # :ditto:
    abstract def azure_file? : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
    # :ditto:
    abstract def azure_file=(value : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?)
    # A description of the persistent volume's resources and capacity. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    abstract def capacity : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def capacity? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    abstract def cephfs : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
    # :ditto:
    abstract def cephfs! : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource
    # :ditto:
    abstract def cephfs? : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
    # :ditto:
    abstract def cephfs=(value : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?)
    # Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def cinder : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
    # :ditto:
    abstract def cinder! : ::K8S::Api::Core::V1::CinderPersistentVolumeSource
    # :ditto:
    abstract def cinder? : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
    # :ditto:
    abstract def cinder=(value : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?)
    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding))
    abstract def claim_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def claim_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def claim_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def claim_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
    # CSI represents storage that is handled by an external CSI driver (Beta feature).
    abstract def csi : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
    # :ditto:
    abstract def csi! : ::K8S::Api::Core::V1::CSIPersistentVolumeSource
    # :ditto:
    abstract def csi? : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
    # :ditto:
    abstract def csi=(value : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?)
    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    abstract def fc : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc! : ::K8S::Api::Core::V1::FCVolumeSource
    # :ditto:
    abstract def fc? : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc=(value : ::K8S::Api::Core::V1::FCVolumeSource?)
    # FlexVolume represents a generic volume resource that is [[provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)]([provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.))
    abstract def flex_volume : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
    # :ditto:
    abstract def flex_volume! : ::K8S::Api::Core::V1::FlexPersistentVolumeSource
    # :ditto:
    abstract def flex_volume? : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
    # :ditto:
    abstract def flex_volume=(value : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?)
    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    abstract def flocker : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker! : ::K8S::Api::Core::V1::FlockerVolumeSource
    # :ditto:
    abstract def flocker? : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker=(value : ::K8S::Api::Core::V1::FlockerVolumeSource?)
    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk))
    abstract def gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk! : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource
    # :ditto:
    abstract def gce_persistent_disk? : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk=(value : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?)
    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)](https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md))
    abstract def glusterfs : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
    # :ditto:
    abstract def glusterfs! : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource
    # :ditto:
    abstract def glusterfs? : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
    # :ditto:
    abstract def glusterfs=(value : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?)
    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    abstract def host_path : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path! : ::K8S::Api::Core::V1::HostPathVolumeSource
    # :ditto:
    abstract def host_path? : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path=(value : ::K8S::Api::Core::V1::HostPathVolumeSource?)
    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    abstract def iscsi : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
    # :ditto:
    abstract def iscsi! : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource
    # :ditto:
    abstract def iscsi? : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
    # :ditto:
    abstract def iscsi=(value : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?)
    # Local represents directly-attached storage with node affinity
    abstract def local : ::K8S::Api::Core::V1::LocalVolumeSource?
    # :ditto:
    abstract def local! : ::K8S::Api::Core::V1::LocalVolumeSource
    # :ditto:
    abstract def local? : ::K8S::Api::Core::V1::LocalVolumeSource?
    # :ditto:
    abstract def local=(value : ::K8S::Api::Core::V1::LocalVolumeSource?)
    # A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options))
    abstract def mount_options : ::Array(String)?
    # :ditto:
    abstract def mount_options! : ::Array(String)
    # :ditto:
    abstract def mount_options? : ::Array(String)?
    # :ditto:
    abstract def mount_options=(value : ::Array(String)?)
    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)](https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs))
    abstract def nfs : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs! : ::K8S::Api::Core::V1::NFSVolumeSource
    # :ditto:
    abstract def nfs? : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs=(value : ::K8S::Api::Core::V1::NFSVolumeSource?)
    # NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
    abstract def node_affinity : ::K8S::Api::Core::V1::VolumeNodeAffinity?
    # :ditto:
    abstract def node_affinity! : ::K8S::Api::Core::V1::VolumeNodeAffinity
    # :ditto:
    abstract def node_affinity? : ::K8S::Api::Core::V1::VolumeNodeAffinity?
    # :ditto:
    abstract def node_affinity=(value : ::K8S::Api::Core::V1::VolumeNodeAffinity?)
    # What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming))
    #
    # Possible enum values:
    #  - `"Delete"` means the volume will be deleted from Kubernetes on release from its claim. The volume plugin must support Deletion.
    #  - `"Recycle"` means the volume will be recycled back into the pool of unbound persistent volumes on release from its claim. The volume plugin must support Recycling.
    #  - `"Retain"` means the volume will be left in its current phase (Released) for manual reclamation by the administrator. The default policy is Retain.
    abstract def persistent_volume_reclaim_policy : String?
    # :ditto:
    abstract def persistent_volume_reclaim_policy! : String
    # :ditto:
    abstract def persistent_volume_reclaim_policy? : String?
    # :ditto:
    abstract def persistent_volume_reclaim_policy=(value : String?)
    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    abstract def photon_persistent_disk : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
    # :ditto:
    abstract def photon_persistent_disk! : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource
    # :ditto:
    abstract def photon_persistent_disk? : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
    # :ditto:
    abstract def photon_persistent_disk=(value : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?)
    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    abstract def portworx_volume : ::K8S::Api::Core::V1::PortworxVolumeSource?
    # :ditto:
    abstract def portworx_volume! : ::K8S::Api::Core::V1::PortworxVolumeSource
    # :ditto:
    abstract def portworx_volume? : ::K8S::Api::Core::V1::PortworxVolumeSource?
    # :ditto:
    abstract def portworx_volume=(value : ::K8S::Api::Core::V1::PortworxVolumeSource?)
    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    abstract def quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte! : ::K8S::Api::Core::V1::QuobyteVolumeSource
    # :ditto:
    abstract def quobyte? : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte=(value : ::K8S::Api::Core::V1::QuobyteVolumeSource?)
    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)](https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md))
    abstract def rbd : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
    # :ditto:
    abstract def rbd! : ::K8S::Api::Core::V1::RBDPersistentVolumeSource
    # :ditto:
    abstract def rbd? : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
    # :ditto:
    abstract def rbd=(value : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?)
    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    abstract def scale_io : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
    # :ditto:
    abstract def scale_io! : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource
    # :ditto:
    abstract def scale_io? : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
    # :ditto:
    abstract def scale_io=(value : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?)
    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    abstract def storage_class_name : String?
    # :ditto:
    abstract def storage_class_name! : String
    # :ditto:
    abstract def storage_class_name? : String?
    # :ditto:
    abstract def storage_class_name=(value : String?)
    # StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [[https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)](https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md))
    abstract def storageos : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
    # :ditto:
    abstract def storageos! : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource
    # :ditto:
    abstract def storageos? : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
    # :ditto:
    abstract def storageos=(value : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?)
    # volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
    abstract def volume_mode : String?
    # :ditto:
    abstract def volume_mode! : String
    # :ditto:
    abstract def volume_mode? : String?
    # :ditto:
    abstract def volume_mode=(value : String?)
    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    abstract def vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume! : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource
    # :ditto:
    abstract def vsphere_volume? : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume=(value : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?)
  end

  # PersistentVolumeSpec is the specification of a persistent volume.
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)"},
    aws_elastic_block_store: {key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", kind: "::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource", nilable: true, default: nil, read_only: false, description: "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    azure_disk: {key: "azureDisk", accessor: "azure_disk", kind: "::K8S::Api::Core::V1::AzureDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."},
    azure_file: {key: "azureFile", accessor: "azure_file", kind: "::K8S::Api::Core::V1::AzureFilePersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureFile represents an Azure File Service mount on the host and bind mount to the pod."},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "A description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)"},
    cephfs: {key: "cephfs", accessor: "cephfs", kind: "::K8S::Api::Core::V1::CephFSPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime"},
    cinder: {key: "cinder", accessor: "cinder", kind: "::K8S::Api::Core::V1::CinderPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)"},
    claim_ref: {key: "claimRef", accessor: "claim_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)"},
    csi: {key: "csi", accessor: "csi", kind: "::K8S::Api::Core::V1::CSIPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "CSI represents storage that is handled by an external CSI driver (Beta feature)."},
    fc: {key: "fc", accessor: "fc", kind: "::K8S::Api::Core::V1::FCVolumeSource", nilable: true, default: nil, read_only: false, description: "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."},
    flex_volume: {key: "flexVolume", accessor: "flex_volume", kind: "::K8S::Api::Core::V1::FlexPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)"},
    flocker: {key: "flocker", accessor: "flocker", kind: "::K8S::Api::Core::V1::FlockerVolumeSource", nilable: true, default: nil, read_only: false, description: "Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running"},
    gce_persistent_disk: {key: "gcePersistentDisk", accessor: "gce_persistent_disk", kind: "::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)"},
    glusterfs: {key: "glusterfs", accessor: "glusterfs", kind: "::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)"},
    host_path: {key: "hostPath", accessor: "host_path", kind: "::K8S::Api::Core::V1::HostPathVolumeSource", nilable: true, default: nil, read_only: false, description: "HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},
    iscsi: {key: "iscsi", accessor: "iscsi", kind: "::K8S::Api::Core::V1::ISCSIPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin."},
    local: {key: "local", accessor: "local", kind: "::K8S::Api::Core::V1::LocalVolumeSource", nilable: true, default: nil, read_only: false, description: "Local represents directly-attached storage with node affinity"},
    mount_options: {key: "mountOptions", accessor: "mount_options", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)"},
    nfs: {key: "nfs", accessor: "nfs", kind: "::K8S::Api::Core::V1::NFSVolumeSource", nilable: true, default: nil, read_only: false, description: "NFS represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    node_affinity: {key: "nodeAffinity", accessor: "node_affinity", kind: "::K8S::Api::Core::V1::VolumeNodeAffinity", nilable: true, default: nil, read_only: false, description: "NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume."},
    persistent_volume_reclaim_policy: {key: "persistentVolumeReclaimPolicy", accessor: "persistent_volume_reclaim_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)\n\nPossible enum values:\n - `\"Delete\"` means the volume will be deleted from Kubernetes on release from its claim. The volume plugin must support Deletion.\n - `\"Recycle\"` means the volume will be recycled back into the pool of unbound persistent volumes on release from its claim. The volume plugin must support Recycling.\n - `\"Retain\"` means the volume will be left in its current phase (Released) for manual reclamation by the administrator. The default policy is Retain."},
    photon_persistent_disk: {key: "photonPersistentDisk", accessor: "photon_persistent_disk", kind: "::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"},
    portworx_volume: {key: "portworxVolume", accessor: "portworx_volume", kind: "::K8S::Api::Core::V1::PortworxVolumeSource", nilable: true, default: nil, read_only: false, description: "PortworxVolume represents a portworx volume attached and mounted on kubelets host machine"},
    quobyte: {key: "quobyte", accessor: "quobyte", kind: "::K8S::Api::Core::V1::QuobyteVolumeSource", nilable: true, default: nil, read_only: false, description: "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime"},
    rbd: {key: "rbd", accessor: "rbd", kind: "::K8S::Api::Core::V1::RBDPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)"},
    scale_io: {key: "scaleIO", accessor: "scale_io", kind: "::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."},
    storage_class_name: {key: "storageClassName", accessor: "storage_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass."},
    storageos: {key: "storageos", accessor: "storageos", kind: "::K8S::Api::Core::V1::StorageOSPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)"},
    volume_mode: {key: "volumeMode", accessor: "volume_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec."},
    vsphere_volume: {key: "vsphereVolume", accessor: "vsphere_volume", kind: "::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"},
  )]
  class Api::Core::V1::PersistentVolumeSpec < ::K8S::Types::Api::Core::V1::PersistentVolumeSpec::Instance
    include ::K8S::Types::Api::Core::V1::PersistentVolumeSpec
    include ::K8S::Kubernetes::Object

    # AccessModes contains all ways the volume can be mounted. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes))
    def access_modes : ::Array(String)?
      self.["accessModes"].as(::Array(String)?)
    end

    # :ditto:
    def access_modes! : ::Array(String)
      self.["accessModes"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def access_modes? : ::Array(String)?
      self.["accessModes"]?.as(::Array(String)?)
    end

    # :ditto:
    def access_modes=(value : ::Array(String)?)
      self.["accessModes"] = value
    end

    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    def aws_elastic_block_store : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
      self.["awsElasticBlockStore"].as(::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?)
    end

    # :ditto:
    def aws_elastic_block_store! : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource
      self.["awsElasticBlockStore"].as(::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?).not_nil!
    end

    # :ditto:
    def aws_elastic_block_store? : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
      self.["awsElasticBlockStore"]?.as(::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?)
    end

    # :ditto:
    def aws_elastic_block_store=(value : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?)
      self.["awsElasticBlockStore"] = value
    end

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    def azure_disk : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
      self.["azureDisk"].as(::K8S::Api::Core::V1::AzureDiskVolumeSource?)
    end

    # :ditto:
    def azure_disk! : ::K8S::Api::Core::V1::AzureDiskVolumeSource
      self.["azureDisk"].as(::K8S::Api::Core::V1::AzureDiskVolumeSource?).not_nil!
    end

    # :ditto:
    def azure_disk? : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
      self.["azureDisk"]?.as(::K8S::Api::Core::V1::AzureDiskVolumeSource?)
    end

    # :ditto:
    def azure_disk=(value : ::K8S::Api::Core::V1::AzureDiskVolumeSource?)
      self.["azureDisk"] = value
    end

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    def azure_file : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
      self.["azureFile"].as(::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?)
    end

    # :ditto:
    def azure_file! : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource
      self.["azureFile"].as(::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def azure_file? : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
      self.["azureFile"]?.as(::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?)
    end

    # :ditto:
    def azure_file=(value : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?)
      self.["azureFile"] = value
    end

    # A description of the persistent volume's resources and capacity. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    def capacity : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity! : ::Hash(String, ::Int32 | ::String)
      self.["capacity"].as(::Hash(String, ::Int32 | ::String)?).not_nil!
    end

    # :ditto:
    def capacity? : ::Hash(String, ::Int32 | ::String)?
      self.["capacity"]?.as(::Hash(String, ::Int32 | ::String)?)
    end

    # :ditto:
    def capacity=(value : ::Hash(String, ::Int32 | ::String)?)
      self.["capacity"] = value
    end

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    def cephfs : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
      self.["cephfs"].as(::K8S::Api::Core::V1::CephFSPersistentVolumeSource?)
    end

    # :ditto:
    def cephfs! : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource
      self.["cephfs"].as(::K8S::Api::Core::V1::CephFSPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def cephfs? : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
      self.["cephfs"]?.as(::K8S::Api::Core::V1::CephFSPersistentVolumeSource?)
    end

    # :ditto:
    def cephfs=(value : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?)
      self.["cephfs"] = value
    end

    # Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    def cinder : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
      self.["cinder"].as(::K8S::Api::Core::V1::CinderPersistentVolumeSource?)
    end

    # :ditto:
    def cinder! : ::K8S::Api::Core::V1::CinderPersistentVolumeSource
      self.["cinder"].as(::K8S::Api::Core::V1::CinderPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def cinder? : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
      self.["cinder"]?.as(::K8S::Api::Core::V1::CinderPersistentVolumeSource?)
    end

    # :ditto:
    def cinder=(value : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?)
      self.["cinder"] = value
    end

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding))
    def claim_ref : ::K8S::Api::Core::V1::ObjectReference?
      self.["claimRef"].as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def claim_ref! : ::K8S::Api::Core::V1::ObjectReference
      self.["claimRef"].as(::K8S::Api::Core::V1::ObjectReference?).not_nil!
    end

    # :ditto:
    def claim_ref? : ::K8S::Api::Core::V1::ObjectReference?
      self.["claimRef"]?.as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def claim_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
      self.["claimRef"] = value
    end

    # CSI represents storage that is handled by an external CSI driver (Beta feature).
    def csi : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
      self.["csi"].as(::K8S::Api::Core::V1::CSIPersistentVolumeSource?)
    end

    # :ditto:
    def csi! : ::K8S::Api::Core::V1::CSIPersistentVolumeSource
      self.["csi"].as(::K8S::Api::Core::V1::CSIPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def csi? : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
      self.["csi"]?.as(::K8S::Api::Core::V1::CSIPersistentVolumeSource?)
    end

    # :ditto:
    def csi=(value : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?)
      self.["csi"] = value
    end

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    def fc : ::K8S::Api::Core::V1::FCVolumeSource?
      self.["fc"].as(::K8S::Api::Core::V1::FCVolumeSource?)
    end

    # :ditto:
    def fc! : ::K8S::Api::Core::V1::FCVolumeSource
      self.["fc"].as(::K8S::Api::Core::V1::FCVolumeSource?).not_nil!
    end

    # :ditto:
    def fc? : ::K8S::Api::Core::V1::FCVolumeSource?
      self.["fc"]?.as(::K8S::Api::Core::V1::FCVolumeSource?)
    end

    # :ditto:
    def fc=(value : ::K8S::Api::Core::V1::FCVolumeSource?)
      self.["fc"] = value
    end

    # FlexVolume represents a generic volume resource that is [[provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)]([provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.))
    def flex_volume : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
      self.["flexVolume"].as(::K8S::Api::Core::V1::FlexPersistentVolumeSource?)
    end

    # :ditto:
    def flex_volume! : ::K8S::Api::Core::V1::FlexPersistentVolumeSource
      self.["flexVolume"].as(::K8S::Api::Core::V1::FlexPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def flex_volume? : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
      self.["flexVolume"]?.as(::K8S::Api::Core::V1::FlexPersistentVolumeSource?)
    end

    # :ditto:
    def flex_volume=(value : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?)
      self.["flexVolume"] = value
    end

    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    def flocker : ::K8S::Api::Core::V1::FlockerVolumeSource?
      self.["flocker"].as(::K8S::Api::Core::V1::FlockerVolumeSource?)
    end

    # :ditto:
    def flocker! : ::K8S::Api::Core::V1::FlockerVolumeSource
      self.["flocker"].as(::K8S::Api::Core::V1::FlockerVolumeSource?).not_nil!
    end

    # :ditto:
    def flocker? : ::K8S::Api::Core::V1::FlockerVolumeSource?
      self.["flocker"]?.as(::K8S::Api::Core::V1::FlockerVolumeSource?)
    end

    # :ditto:
    def flocker=(value : ::K8S::Api::Core::V1::FlockerVolumeSource?)
      self.["flocker"] = value
    end

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk))
    def gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
      self.["gcePersistentDisk"].as(::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?)
    end

    # :ditto:
    def gce_persistent_disk! : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource
      self.["gcePersistentDisk"].as(::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?).not_nil!
    end

    # :ditto:
    def gce_persistent_disk? : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
      self.["gcePersistentDisk"]?.as(::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?)
    end

    # :ditto:
    def gce_persistent_disk=(value : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?)
      self.["gcePersistentDisk"] = value
    end

    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)](https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md))
    def glusterfs : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
      self.["glusterfs"].as(::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?)
    end

    # :ditto:
    def glusterfs! : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource
      self.["glusterfs"].as(::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def glusterfs? : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
      self.["glusterfs"]?.as(::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?)
    end

    # :ditto:
    def glusterfs=(value : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?)
      self.["glusterfs"] = value
    end

    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    def host_path : ::K8S::Api::Core::V1::HostPathVolumeSource?
      self.["hostPath"].as(::K8S::Api::Core::V1::HostPathVolumeSource?)
    end

    # :ditto:
    def host_path! : ::K8S::Api::Core::V1::HostPathVolumeSource
      self.["hostPath"].as(::K8S::Api::Core::V1::HostPathVolumeSource?).not_nil!
    end

    # :ditto:
    def host_path? : ::K8S::Api::Core::V1::HostPathVolumeSource?
      self.["hostPath"]?.as(::K8S::Api::Core::V1::HostPathVolumeSource?)
    end

    # :ditto:
    def host_path=(value : ::K8S::Api::Core::V1::HostPathVolumeSource?)
      self.["hostPath"] = value
    end

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    def iscsi : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
      self.["iscsi"].as(::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?)
    end

    # :ditto:
    def iscsi! : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource
      self.["iscsi"].as(::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def iscsi? : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
      self.["iscsi"]?.as(::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?)
    end

    # :ditto:
    def iscsi=(value : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?)
      self.["iscsi"] = value
    end

    # Local represents directly-attached storage with node affinity
    def local : ::K8S::Api::Core::V1::LocalVolumeSource?
      self.["local"].as(::K8S::Api::Core::V1::LocalVolumeSource?)
    end

    # :ditto:
    def local! : ::K8S::Api::Core::V1::LocalVolumeSource
      self.["local"].as(::K8S::Api::Core::V1::LocalVolumeSource?).not_nil!
    end

    # :ditto:
    def local? : ::K8S::Api::Core::V1::LocalVolumeSource?
      self.["local"]?.as(::K8S::Api::Core::V1::LocalVolumeSource?)
    end

    # :ditto:
    def local=(value : ::K8S::Api::Core::V1::LocalVolumeSource?)
      self.["local"] = value
    end

    # A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options))
    def mount_options : ::Array(String)?
      self.["mountOptions"].as(::Array(String)?)
    end

    # :ditto:
    def mount_options! : ::Array(String)
      self.["mountOptions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def mount_options? : ::Array(String)?
      self.["mountOptions"]?.as(::Array(String)?)
    end

    # :ditto:
    def mount_options=(value : ::Array(String)?)
      self.["mountOptions"] = value
    end

    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)](https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs))
    def nfs : ::K8S::Api::Core::V1::NFSVolumeSource?
      self.["nfs"].as(::K8S::Api::Core::V1::NFSVolumeSource?)
    end

    # :ditto:
    def nfs! : ::K8S::Api::Core::V1::NFSVolumeSource
      self.["nfs"].as(::K8S::Api::Core::V1::NFSVolumeSource?).not_nil!
    end

    # :ditto:
    def nfs? : ::K8S::Api::Core::V1::NFSVolumeSource?
      self.["nfs"]?.as(::K8S::Api::Core::V1::NFSVolumeSource?)
    end

    # :ditto:
    def nfs=(value : ::K8S::Api::Core::V1::NFSVolumeSource?)
      self.["nfs"] = value
    end

    # NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
    def node_affinity : ::K8S::Api::Core::V1::VolumeNodeAffinity?
      self.["nodeAffinity"].as(::K8S::Api::Core::V1::VolumeNodeAffinity?)
    end

    # :ditto:
    def node_affinity! : ::K8S::Api::Core::V1::VolumeNodeAffinity
      self.["nodeAffinity"].as(::K8S::Api::Core::V1::VolumeNodeAffinity?).not_nil!
    end

    # :ditto:
    def node_affinity? : ::K8S::Api::Core::V1::VolumeNodeAffinity?
      self.["nodeAffinity"]?.as(::K8S::Api::Core::V1::VolumeNodeAffinity?)
    end

    # :ditto:
    def node_affinity=(value : ::K8S::Api::Core::V1::VolumeNodeAffinity?)
      self.["nodeAffinity"] = value
    end

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming))
    #
    # Possible enum values:
    #  - `"Delete"` means the volume will be deleted from Kubernetes on release from its claim. The volume plugin must support Deletion.
    #  - `"Recycle"` means the volume will be recycled back into the pool of unbound persistent volumes on release from its claim. The volume plugin must support Recycling.
    #  - `"Retain"` means the volume will be left in its current phase (Released) for manual reclamation by the administrator. The default policy is Retain.
    def persistent_volume_reclaim_policy : String?
      self.["persistentVolumeReclaimPolicy"].as(String?)
    end

    # :ditto:
    def persistent_volume_reclaim_policy! : String
      self.["persistentVolumeReclaimPolicy"].as(String?).not_nil!
    end

    # :ditto:
    def persistent_volume_reclaim_policy? : String?
      self.["persistentVolumeReclaimPolicy"]?.as(String?)
    end

    # :ditto:
    def persistent_volume_reclaim_policy=(value : String?)
      self.["persistentVolumeReclaimPolicy"] = value
    end

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    def photon_persistent_disk : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
      self.["photonPersistentDisk"].as(::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?)
    end

    # :ditto:
    def photon_persistent_disk! : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource
      self.["photonPersistentDisk"].as(::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?).not_nil!
    end

    # :ditto:
    def photon_persistent_disk? : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
      self.["photonPersistentDisk"]?.as(::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?)
    end

    # :ditto:
    def photon_persistent_disk=(value : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?)
      self.["photonPersistentDisk"] = value
    end

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    def portworx_volume : ::K8S::Api::Core::V1::PortworxVolumeSource?
      self.["portworxVolume"].as(::K8S::Api::Core::V1::PortworxVolumeSource?)
    end

    # :ditto:
    def portworx_volume! : ::K8S::Api::Core::V1::PortworxVolumeSource
      self.["portworxVolume"].as(::K8S::Api::Core::V1::PortworxVolumeSource?).not_nil!
    end

    # :ditto:
    def portworx_volume? : ::K8S::Api::Core::V1::PortworxVolumeSource?
      self.["portworxVolume"]?.as(::K8S::Api::Core::V1::PortworxVolumeSource?)
    end

    # :ditto:
    def portworx_volume=(value : ::K8S::Api::Core::V1::PortworxVolumeSource?)
      self.["portworxVolume"] = value
    end

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    def quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource?
      self.["quobyte"].as(::K8S::Api::Core::V1::QuobyteVolumeSource?)
    end

    # :ditto:
    def quobyte! : ::K8S::Api::Core::V1::QuobyteVolumeSource
      self.["quobyte"].as(::K8S::Api::Core::V1::QuobyteVolumeSource?).not_nil!
    end

    # :ditto:
    def quobyte? : ::K8S::Api::Core::V1::QuobyteVolumeSource?
      self.["quobyte"]?.as(::K8S::Api::Core::V1::QuobyteVolumeSource?)
    end

    # :ditto:
    def quobyte=(value : ::K8S::Api::Core::V1::QuobyteVolumeSource?)
      self.["quobyte"] = value
    end

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)](https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md))
    def rbd : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
      self.["rbd"].as(::K8S::Api::Core::V1::RBDPersistentVolumeSource?)
    end

    # :ditto:
    def rbd! : ::K8S::Api::Core::V1::RBDPersistentVolumeSource
      self.["rbd"].as(::K8S::Api::Core::V1::RBDPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def rbd? : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
      self.["rbd"]?.as(::K8S::Api::Core::V1::RBDPersistentVolumeSource?)
    end

    # :ditto:
    def rbd=(value : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?)
      self.["rbd"] = value
    end

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    def scale_io : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
      self.["scaleIO"].as(::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?)
    end

    # :ditto:
    def scale_io! : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource
      self.["scaleIO"].as(::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def scale_io? : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
      self.["scaleIO"]?.as(::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?)
    end

    # :ditto:
    def scale_io=(value : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?)
      self.["scaleIO"] = value
    end

    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    def storage_class_name : String?
      self.["storageClassName"].as(String?)
    end

    # :ditto:
    def storage_class_name! : String
      self.["storageClassName"].as(String?).not_nil!
    end

    # :ditto:
    def storage_class_name? : String?
      self.["storageClassName"]?.as(String?)
    end

    # :ditto:
    def storage_class_name=(value : String?)
      self.["storageClassName"] = value
    end

    # StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [[https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)](https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md))
    def storageos : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
      self.["storageos"].as(::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?)
    end

    # :ditto:
    def storageos! : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource
      self.["storageos"].as(::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?).not_nil!
    end

    # :ditto:
    def storageos? : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
      self.["storageos"]?.as(::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?)
    end

    # :ditto:
    def storageos=(value : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?)
      self.["storageos"] = value
    end

    # volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
    def volume_mode : String?
      self.["volumeMode"].as(String?)
    end

    # :ditto:
    def volume_mode! : String
      self.["volumeMode"].as(String?).not_nil!
    end

    # :ditto:
    def volume_mode? : String?
      self.["volumeMode"]?.as(String?)
    end

    # :ditto:
    def volume_mode=(value : String?)
      self.["volumeMode"] = value
    end

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    def vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
      self.["vsphereVolume"].as(::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?)
    end

    # :ditto:
    def vsphere_volume! : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource
      self.["vsphereVolume"].as(::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?).not_nil!
    end

    # :ditto:
    def vsphere_volume? : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
      self.["vsphereVolume"]?.as(::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?)
    end

    # :ditto:
    def vsphere_volume=(value : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?)
      self.["vsphereVolume"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource },
        { key: "azureDisk", accessor: "azure_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource },
        { key: "azureFile", accessor: "azure_file", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource },
        { key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String)) },
        { key: "cephfs", accessor: "cephfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CephFSPersistentVolumeSource },
        { key: "cinder", accessor: "cinder", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CinderPersistentVolumeSource },
        { key: "claimRef", accessor: "claim_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
        { key: "csi", accessor: "csi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CSIPersistentVolumeSource },
        { key: "fc", accessor: "fc", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FCVolumeSource },
        { key: "flexVolume", accessor: "flex_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlexPersistentVolumeSource },
        { key: "flocker", accessor: "flocker", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlockerVolumeSource },
        { key: "gcePersistentDisk", accessor: "gce_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource },
        { key: "glusterfs", accessor: "glusterfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource },
        { key: "hostPath", accessor: "host_path", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HostPathVolumeSource },
        { key: "iscsi", accessor: "iscsi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource },
        { key: "local", accessor: "local", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalVolumeSource },
        { key: "mountOptions", accessor: "mount_options", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "nfs", accessor: "nfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NFSVolumeSource },
        { key: "nodeAffinity", accessor: "node_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::VolumeNodeAffinity },
        { key: "persistentVolumeReclaimPolicy", accessor: "persistent_volume_reclaim_policy", nilable: true, read_only: false, default: nil, kind: String },
        { key: "photonPersistentDisk", accessor: "photon_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource },
        { key: "portworxVolume", accessor: "portworx_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PortworxVolumeSource },
        { key: "quobyte", accessor: "quobyte", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::QuobyteVolumeSource },
        { key: "rbd", accessor: "rbd", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::RBDPersistentVolumeSource },
        { key: "scaleIO", accessor: "scale_io", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource },
        { key: "storageClassName", accessor: "storage_class_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "storageos", accessor: "storageos", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource },
        { key: "volumeMode", accessor: "volume_mode", nilable: true, read_only: false, default: nil, kind: String },
        { key: "vsphereVolume", accessor: "vsphere_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource },
      ])
end
  end
end
