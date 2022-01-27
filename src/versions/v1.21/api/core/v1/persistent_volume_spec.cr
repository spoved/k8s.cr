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
    # AccessModes contains all ways the volume can be mounted. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes))
    abstract def access_modes : ::Array(String)?
    # :ditto:
    abstract def access_modes! : ::Array(String)
    # :ditto:
    abstract def access_modes? : ::Array(String)?
    # :ditto:
    abstract def access_modes=(value : ::Array(String))
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore))
    abstract def aws_elastic_block_store : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
    # :ditto:
    abstract def aws_elastic_block_store! : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource
    # :ditto:
    abstract def aws_elastic_block_store? : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource?
    # :ditto:
    abstract def aws_elastic_block_store=(value : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource)
    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    abstract def azure_disk : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
    # :ditto:
    abstract def azure_disk! : ::K8S::Api::Core::V1::AzureDiskVolumeSource
    # :ditto:
    abstract def azure_disk? : ::K8S::Api::Core::V1::AzureDiskVolumeSource?
    # :ditto:
    abstract def azure_disk=(value : ::K8S::Api::Core::V1::AzureDiskVolumeSource)
    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    abstract def azure_file : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
    # :ditto:
    abstract def azure_file! : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource
    # :ditto:
    abstract def azure_file? : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource?
    # :ditto:
    abstract def azure_file=(value : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource)
    # A description of the persistent volume's resources and capacity. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity))
    abstract def capacity : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity! : ::Hash(String, ::Int32 | ::String)
    # :ditto:
    abstract def capacity? : ::Hash(String, ::Int32 | ::String)?
    # :ditto:
    abstract def capacity=(value : ::Hash(String, ::Int32 | ::String))
    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    abstract def cephfs : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
    # :ditto:
    abstract def cephfs! : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource
    # :ditto:
    abstract def cephfs? : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource?
    # :ditto:
    abstract def cephfs=(value : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource)
    # Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def cinder : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
    # :ditto:
    abstract def cinder! : ::K8S::Api::Core::V1::CinderPersistentVolumeSource
    # :ditto:
    abstract def cinder? : ::K8S::Api::Core::V1::CinderPersistentVolumeSource?
    # :ditto:
    abstract def cinder=(value : ::K8S::Api::Core::V1::CinderPersistentVolumeSource)
    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding))
    abstract def claim_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def claim_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def claim_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def claim_ref=(value : ::K8S::Api::Core::V1::ObjectReference)
    # CSI represents storage that is handled by an external CSI driver (Beta feature).
    abstract def csi : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
    # :ditto:
    abstract def csi! : ::K8S::Api::Core::V1::CSIPersistentVolumeSource
    # :ditto:
    abstract def csi? : ::K8S::Api::Core::V1::CSIPersistentVolumeSource?
    # :ditto:
    abstract def csi=(value : ::K8S::Api::Core::V1::CSIPersistentVolumeSource)
    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    abstract def fc : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc! : ::K8S::Api::Core::V1::FCVolumeSource
    # :ditto:
    abstract def fc? : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc=(value : ::K8S::Api::Core::V1::FCVolumeSource)
    # FlexVolume represents a generic volume resource that is [[provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)]([provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.))
    abstract def flex_volume : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
    # :ditto:
    abstract def flex_volume! : ::K8S::Api::Core::V1::FlexPersistentVolumeSource
    # :ditto:
    abstract def flex_volume? : ::K8S::Api::Core::V1::FlexPersistentVolumeSource?
    # :ditto:
    abstract def flex_volume=(value : ::K8S::Api::Core::V1::FlexPersistentVolumeSource)
    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    abstract def flocker : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker! : ::K8S::Api::Core::V1::FlockerVolumeSource
    # :ditto:
    abstract def flocker? : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker=(value : ::K8S::Api::Core::V1::FlockerVolumeSource)
    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk))
    abstract def gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk! : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource
    # :ditto:
    abstract def gce_persistent_disk? : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk=(value : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource)
    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)](https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md))
    abstract def glusterfs : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
    # :ditto:
    abstract def glusterfs! : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource
    # :ditto:
    abstract def glusterfs? : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource?
    # :ditto:
    abstract def glusterfs=(value : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource)
    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    abstract def host_path : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path! : ::K8S::Api::Core::V1::HostPathVolumeSource
    # :ditto:
    abstract def host_path? : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path=(value : ::K8S::Api::Core::V1::HostPathVolumeSource)
    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    abstract def iscsi : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
    # :ditto:
    abstract def iscsi! : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource
    # :ditto:
    abstract def iscsi? : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource?
    # :ditto:
    abstract def iscsi=(value : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource)
    # Local represents directly-attached storage with node affinity
    abstract def local : ::K8S::Api::Core::V1::LocalVolumeSource?
    # :ditto:
    abstract def local! : ::K8S::Api::Core::V1::LocalVolumeSource
    # :ditto:
    abstract def local? : ::K8S::Api::Core::V1::LocalVolumeSource?
    # :ditto:
    abstract def local=(value : ::K8S::Api::Core::V1::LocalVolumeSource)
    # A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options))
    abstract def mount_options : ::Array(String)?
    # :ditto:
    abstract def mount_options! : ::Array(String)
    # :ditto:
    abstract def mount_options? : ::Array(String)?
    # :ditto:
    abstract def mount_options=(value : ::Array(String))
    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)](https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs))
    abstract def nfs : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs! : ::K8S::Api::Core::V1::NFSVolumeSource
    # :ditto:
    abstract def nfs? : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs=(value : ::K8S::Api::Core::V1::NFSVolumeSource)
    # NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.
    abstract def node_affinity : ::K8S::Api::Core::V1::VolumeNodeAffinity?
    # :ditto:
    abstract def node_affinity! : ::K8S::Api::Core::V1::VolumeNodeAffinity
    # :ditto:
    abstract def node_affinity? : ::K8S::Api::Core::V1::VolumeNodeAffinity?
    # :ditto:
    abstract def node_affinity=(value : ::K8S::Api::Core::V1::VolumeNodeAffinity)
    # What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming))
    abstract def persistent_volume_reclaim_policy : String?
    # :ditto:
    abstract def persistent_volume_reclaim_policy! : String
    # :ditto:
    abstract def persistent_volume_reclaim_policy? : String?
    # :ditto:
    abstract def persistent_volume_reclaim_policy=(value : String)
    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    abstract def photon_persistent_disk : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
    # :ditto:
    abstract def photon_persistent_disk! : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource
    # :ditto:
    abstract def photon_persistent_disk? : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource?
    # :ditto:
    abstract def photon_persistent_disk=(value : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource)
    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    abstract def portworx_volume : ::K8S::Api::Core::V1::PortworxVolumeSource?
    # :ditto:
    abstract def portworx_volume! : ::K8S::Api::Core::V1::PortworxVolumeSource
    # :ditto:
    abstract def portworx_volume? : ::K8S::Api::Core::V1::PortworxVolumeSource?
    # :ditto:
    abstract def portworx_volume=(value : ::K8S::Api::Core::V1::PortworxVolumeSource)
    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    abstract def quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte! : ::K8S::Api::Core::V1::QuobyteVolumeSource
    # :ditto:
    abstract def quobyte? : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte=(value : ::K8S::Api::Core::V1::QuobyteVolumeSource)
    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)](https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md))
    abstract def rbd : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
    # :ditto:
    abstract def rbd! : ::K8S::Api::Core::V1::RBDPersistentVolumeSource
    # :ditto:
    abstract def rbd? : ::K8S::Api::Core::V1::RBDPersistentVolumeSource?
    # :ditto:
    abstract def rbd=(value : ::K8S::Api::Core::V1::RBDPersistentVolumeSource)
    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    abstract def scale_io : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
    # :ditto:
    abstract def scale_io! : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource
    # :ditto:
    abstract def scale_io? : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource?
    # :ditto:
    abstract def scale_io=(value : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource)
    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    abstract def storage_class_name : String?
    # :ditto:
    abstract def storage_class_name! : String
    # :ditto:
    abstract def storage_class_name? : String?
    # :ditto:
    abstract def storage_class_name=(value : String)
    # StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [[https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)](https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md))
    abstract def storageos : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
    # :ditto:
    abstract def storageos! : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource
    # :ditto:
    abstract def storageos? : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource?
    # :ditto:
    abstract def storageos=(value : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource)
    # volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
    abstract def volume_mode : String?
    # :ditto:
    abstract def volume_mode! : String
    # :ditto:
    abstract def volume_mode? : String?
    # :ditto:
    abstract def volume_mode=(value : String)
    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    abstract def vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume! : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource
    # :ditto:
    abstract def vsphere_volume? : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume=(value : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource)
  end

  # PersistentVolumeSpec is the specification of a persistent volume.
  @[::K8S::Properties(
    access_modes: {key: "accessModes", accessor: "access_modes", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "AccessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    aws_elastic_block_store: {key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", kind: "::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource", nilable: true, default: nil, read_only: false, description: "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    azure_disk: {key: "azureDisk", accessor: "azure_disk", kind: "::K8S::Api::Core::V1::AzureDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    azure_file: {key: "azureFile", accessor: "azure_file", kind: "::K8S::Api::Core::V1::AzureFilePersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureFile represents an Azure File Service mount on the host and bind mount to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    capacity: {key: "capacity", accessor: "capacity", kind: "::Hash(String, ::Int32 | ::String)", nilable: true, default: nil, read_only: false, description: "A description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cephfs: {key: "cephfs", accessor: "cephfs", kind: "::K8S::Api::Core::V1::CephFSPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cinder: {key: "cinder", accessor: "cinder", kind: "::K8S::Api::Core::V1::CinderPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    claim_ref: {key: "claimRef", accessor: "claim_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    csi: {key: "csi", accessor: "csi", kind: "::K8S::Api::Core::V1::CSIPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "CSI represents storage that is handled by an external CSI driver (Beta feature).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fc: {key: "fc", accessor: "fc", kind: "::K8S::Api::Core::V1::FCVolumeSource", nilable: true, default: nil, read_only: false, description: "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    flex_volume: {key: "flexVolume", accessor: "flex_volume", kind: "::K8S::Api::Core::V1::FlexPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    flocker: {key: "flocker", accessor: "flocker", kind: "::K8S::Api::Core::V1::FlockerVolumeSource", nilable: true, default: nil, read_only: false, description: "Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    gce_persistent_disk: {key: "gcePersistentDisk", accessor: "gce_persistent_disk", kind: "::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    glusterfs: {key: "glusterfs", accessor: "glusterfs", kind: "::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_path: {key: "hostPath", accessor: "host_path", kind: "::K8S::Api::Core::V1::HostPathVolumeSource", nilable: true, default: nil, read_only: false, description: "HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    iscsi: {key: "iscsi", accessor: "iscsi", kind: "::K8S::Api::Core::V1::ISCSIPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    local: {key: "local", accessor: "local", kind: "::K8S::Api::Core::V1::LocalVolumeSource", nilable: true, default: nil, read_only: false, description: "Local represents directly-attached storage with node affinity", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    mount_options: {key: "mountOptions", accessor: "mount_options", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "A list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    nfs: {key: "nfs", accessor: "nfs", kind: "::K8S::Api::Core::V1::NFSVolumeSource", nilable: true, default: nil, read_only: false, description: "NFS represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_affinity: {key: "nodeAffinity", accessor: "node_affinity", kind: "::K8S::Api::Core::V1::VolumeNodeAffinity", nilable: true, default: nil, read_only: false, description: "NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    persistent_volume_reclaim_policy: {key: "persistentVolumeReclaimPolicy", accessor: "persistent_volume_reclaim_policy", kind: "String", nilable: true, default: nil, read_only: false, description: "What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    photon_persistent_disk: {key: "photonPersistentDisk", accessor: "photon_persistent_disk", kind: "::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    portworx_volume: {key: "portworxVolume", accessor: "portworx_volume", kind: "::K8S::Api::Core::V1::PortworxVolumeSource", nilable: true, default: nil, read_only: false, description: "PortworxVolume represents a portworx volume attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    quobyte: {key: "quobyte", accessor: "quobyte", kind: "::K8S::Api::Core::V1::QuobyteVolumeSource", nilable: true, default: nil, read_only: false, description: "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rbd: {key: "rbd", accessor: "rbd", kind: "::K8S::Api::Core::V1::RBDPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_io: {key: "scaleIO", accessor: "scale_io", kind: "::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storage_class_name: {key: "storageClassName", accessor: "storage_class_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storageos: {key: "storageos", accessor: "storageos", kind: "::K8S::Api::Core::V1::StorageOSPersistentVolumeSource", nilable: true, default: nil, read_only: false, description: "StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    volume_mode: {key: "volumeMode", accessor: "volume_mode", kind: "String", nilable: true, default: nil, read_only: false, description: "volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    vsphere_volume: {key: "vsphereVolume", accessor: "vsphere_volume", kind: "::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PersistentVolumeSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PersistentVolumeSpec
    k8s_object_accessor("accessModes", access_modes : ::Array(String), true, false, "AccessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)")
    k8s_object_accessor("awsElasticBlockStore", aws_elastic_block_store : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource, true, false, "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)")
    k8s_object_accessor("azureDisk", azure_disk : ::K8S::Api::Core::V1::AzureDiskVolumeSource, true, false, "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.")
    k8s_object_accessor("azureFile", azure_file : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource, true, false, "AzureFile represents an Azure File Service mount on the host and bind mount to the pod.")
    k8s_object_accessor("capacity", capacity : ::Hash(String, ::Int32 | ::String), true, false, "A description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)")
    k8s_object_accessor("cephfs", cephfs : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource, true, false, "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime")
    k8s_object_accessor("cinder", cinder : ::K8S::Api::Core::V1::CinderPersistentVolumeSource, true, false, "Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)")
    k8s_object_accessor("claimRef", claim_ref : ::K8S::Api::Core::V1::ObjectReference, true, false, "ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)")
    k8s_object_accessor("csi", csi : ::K8S::Api::Core::V1::CSIPersistentVolumeSource, true, false, "CSI represents storage that is handled by an external CSI driver (Beta feature).")
    k8s_object_accessor("fc", fc : ::K8S::Api::Core::V1::FCVolumeSource, true, false, "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.")
    k8s_object_accessor("flexVolume", flex_volume : ::K8S::Api::Core::V1::FlexPersistentVolumeSource, true, false, "FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)")
    k8s_object_accessor("flocker", flocker : ::K8S::Api::Core::V1::FlockerVolumeSource, true, false, "Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running")
    k8s_object_accessor("gcePersistentDisk", gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource, true, false, "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)")
    k8s_object_accessor("glusterfs", glusterfs : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource, true, false, "Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)")
    k8s_object_accessor("hostPath", host_path : ::K8S::Api::Core::V1::HostPathVolumeSource, true, false, "HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)")
    k8s_object_accessor("iscsi", iscsi : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource, true, false, "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.")
    k8s_object_accessor("local", local : ::K8S::Api::Core::V1::LocalVolumeSource, true, false, "Local represents directly-attached storage with node affinity")
    k8s_object_accessor("mountOptions", mount_options : ::Array(String), true, false, "A list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)")
    k8s_object_accessor("nfs", nfs : ::K8S::Api::Core::V1::NFSVolumeSource, true, false, "NFS represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)")
    k8s_object_accessor("nodeAffinity", node_affinity : ::K8S::Api::Core::V1::VolumeNodeAffinity, true, false, "NodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume.")
    k8s_object_accessor("persistentVolumeReclaimPolicy", persistent_volume_reclaim_policy : String, true, false, "What happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)")
    k8s_object_accessor("photonPersistentDisk", photon_persistent_disk : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource, true, false, "PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine")
    k8s_object_accessor("portworxVolume", portworx_volume : ::K8S::Api::Core::V1::PortworxVolumeSource, true, false, "PortworxVolume represents a portworx volume attached and mounted on kubelets host machine")
    k8s_object_accessor("quobyte", quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource, true, false, "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime")
    k8s_object_accessor("rbd", rbd : ::K8S::Api::Core::V1::RBDPersistentVolumeSource, true, false, "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)")
    k8s_object_accessor("scaleIO", scale_io : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource, true, false, "ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.")
    k8s_object_accessor("storageClassName", storage_class_name : String, true, false, "Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.")
    k8s_object_accessor("storageos", storageos : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource, true, false, "StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)")
    k8s_object_accessor("volumeMode", volume_mode : String, true, false, "volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.")
    k8s_object_accessor("vsphereVolume", vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource, true, false, "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine")

    def initialize(*, access_modes : ::Array(String)? = nil, aws_elastic_block_store : ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource? = nil, azure_disk : ::K8S::Api::Core::V1::AzureDiskVolumeSource? = nil, azure_file : ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource? = nil, capacity : ::Hash(String, ::Int32 | ::String)? = nil, cephfs : ::K8S::Api::Core::V1::CephFSPersistentVolumeSource? = nil, cinder : ::K8S::Api::Core::V1::CinderPersistentVolumeSource? = nil, claim_ref : ::K8S::Api::Core::V1::ObjectReference? = nil, csi : ::K8S::Api::Core::V1::CSIPersistentVolumeSource? = nil, fc : ::K8S::Api::Core::V1::FCVolumeSource? = nil, flex_volume : ::K8S::Api::Core::V1::FlexPersistentVolumeSource? = nil, flocker : ::K8S::Api::Core::V1::FlockerVolumeSource? = nil, gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource? = nil, glusterfs : ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource? = nil, host_path : ::K8S::Api::Core::V1::HostPathVolumeSource? = nil, iscsi : ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource? = nil, local : ::K8S::Api::Core::V1::LocalVolumeSource? = nil, mount_options : ::Array(String)? = nil, nfs : ::K8S::Api::Core::V1::NFSVolumeSource? = nil, node_affinity : ::K8S::Api::Core::V1::VolumeNodeAffinity? = nil, persistent_volume_reclaim_policy : String? = nil, photon_persistent_disk : ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource? = nil, portworx_volume : ::K8S::Api::Core::V1::PortworxVolumeSource? = nil, quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource? = nil, rbd : ::K8S::Api::Core::V1::RBDPersistentVolumeSource? = nil, scale_io : ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource? = nil, storage_class_name : String? = nil, storageos : ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource? = nil, volume_mode : String? = nil, vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource? = nil)
      super()
      self.["accessModes"] = access_modes
      self.["awsElasticBlockStore"] = aws_elastic_block_store
      self.["azureDisk"] = azure_disk
      self.["azureFile"] = azure_file
      self.["capacity"] = capacity
      self.["cephfs"] = cephfs
      self.["cinder"] = cinder
      self.["claimRef"] = claim_ref
      self.["csi"] = csi
      self.["fc"] = fc
      self.["flexVolume"] = flex_volume
      self.["flocker"] = flocker
      self.["gcePersistentDisk"] = gce_persistent_disk
      self.["glusterfs"] = glusterfs
      self.["hostPath"] = host_path
      self.["iscsi"] = iscsi
      self.["local"] = local
      self.["mountOptions"] = mount_options
      self.["nfs"] = nfs
      self.["nodeAffinity"] = node_affinity
      self.["persistentVolumeReclaimPolicy"] = persistent_volume_reclaim_policy
      self.["photonPersistentDisk"] = photon_persistent_disk
      self.["portworxVolume"] = portworx_volume
      self.["quobyte"] = quobyte
      self.["rbd"] = rbd
      self.["scaleIO"] = scale_io
      self.["storageClassName"] = storage_class_name
      self.["storageos"] = storageos
      self.["volumeMode"] = volume_mode
      self.["vsphereVolume"] = vsphere_volume
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "accessModes", accessor: "access_modes", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource},
      {key: "azureDisk", accessor: "azure_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource},
      {key: "azureFile", accessor: "azure_file", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource},
      {key: "capacity", accessor: "capacity", nilable: true, read_only: false, default: nil, kind: ::Union(::Hash(String, ::Int32 | ::String))},
      {key: "cephfs", accessor: "cephfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CephFSPersistentVolumeSource},
      {key: "cinder", accessor: "cinder", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CinderPersistentVolumeSource},
      {key: "claimRef", accessor: "claim_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
      {key: "csi", accessor: "csi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CSIPersistentVolumeSource},
      {key: "fc", accessor: "fc", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FCVolumeSource},
      {key: "flexVolume", accessor: "flex_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlexPersistentVolumeSource},
      {key: "flocker", accessor: "flocker", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlockerVolumeSource},
      {key: "gcePersistentDisk", accessor: "gce_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource},
      {key: "glusterfs", accessor: "glusterfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource},
      {key: "hostPath", accessor: "host_path", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HostPathVolumeSource},
      {key: "iscsi", accessor: "iscsi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource},
      {key: "local", accessor: "local", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::LocalVolumeSource},
      {key: "mountOptions", accessor: "mount_options", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "nfs", accessor: "nfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NFSVolumeSource},
      {key: "nodeAffinity", accessor: "node_affinity", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::VolumeNodeAffinity},
      {key: "persistentVolumeReclaimPolicy", accessor: "persistent_volume_reclaim_policy", nilable: true, read_only: false, default: nil, kind: String},
      {key: "photonPersistentDisk", accessor: "photon_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource},
      {key: "portworxVolume", accessor: "portworx_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PortworxVolumeSource},
      {key: "quobyte", accessor: "quobyte", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::QuobyteVolumeSource},
      {key: "rbd", accessor: "rbd", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::RBDPersistentVolumeSource},
      {key: "scaleIO", accessor: "scale_io", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource},
      {key: "storageClassName", accessor: "storage_class_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "storageos", accessor: "storageos", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource},
      {key: "volumeMode", accessor: "volume_mode", nilable: true, read_only: false, default: nil, kind: String},
      {key: "vsphereVolume", accessor: "vsphere_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource},
    ])
  end
end
