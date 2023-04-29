# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

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

::K8S::Kubernetes::Resource.define_object("PersistentVolumeSpec",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "access_modes", kind: ::Array(String), key: "accessModes", nilable: true, read_only: false, description: "accessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)"},
    {name: "aws_elastic_block_store", kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource, key: "awsElasticBlockStore", nilable: true, read_only: false, description: "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    {name: "azure_disk", kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource, key: "azureDisk", nilable: true, read_only: false, description: "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."},
    {name: "azure_file", kind: ::K8S::Api::Core::V1::AzureFilePersistentVolumeSource, key: "azureFile", nilable: true, read_only: false, description: "azureFile represents an Azure File Service mount on the host and bind mount to the pod."},
    {name: "capacity", kind: Union(::Hash(String, ::Int32 | ::String)), key: "capacity", nilable: true, read_only: false, description: "capacity is the description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)"},
    {name: "cephfs", kind: ::K8S::Api::Core::V1::CephFSPersistentVolumeSource, key: "cephfs", nilable: true, read_only: false, description: "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime"},
    {name: "cinder", kind: ::K8S::Api::Core::V1::CinderPersistentVolumeSource, key: "cinder", nilable: true, read_only: false, description: "cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)"},
    {name: "claim_ref", kind: ::K8S::Api::Core::V1::ObjectReference, key: "claimRef", nilable: true, read_only: false, description: "claimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)"},
    {name: "csi", kind: ::K8S::Api::Core::V1::CSIPersistentVolumeSource, key: "csi", nilable: true, read_only: false, description: "csi represents storage that is handled by an external CSI driver (Beta feature)."},
    {name: "fc", kind: ::K8S::Api::Core::V1::FCVolumeSource, key: "fc", nilable: true, read_only: false, description: "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."},
    {name: "flex_volume", kind: ::K8S::Api::Core::V1::FlexPersistentVolumeSource, key: "flexVolume", nilable: true, read_only: false, description: "flexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)"},
    {name: "flocker", kind: ::K8S::Api::Core::V1::FlockerVolumeSource, key: "flocker", nilable: true, read_only: false, description: "flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running"},
    {name: "gce_persistent_disk", kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource, key: "gcePersistentDisk", nilable: true, read_only: false, description: "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)"},
    {name: "glusterfs", kind: ::K8S::Api::Core::V1::GlusterfsPersistentVolumeSource, key: "glusterfs", nilable: true, read_only: false, description: "glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)"},
    {name: "host_path", kind: ::K8S::Api::Core::V1::HostPathVolumeSource, key: "hostPath", nilable: true, read_only: false, description: "hostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},
    {name: "iscsi", kind: ::K8S::Api::Core::V1::ISCSIPersistentVolumeSource, key: "iscsi", nilable: true, read_only: false, description: "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin."},
    {name: "local", kind: ::K8S::Api::Core::V1::LocalVolumeSource, key: "local", nilable: true, read_only: false, description: "local represents directly-attached storage with node affinity"},
    {name: "mount_options", kind: ::Array(String), key: "mountOptions", nilable: true, read_only: false, description: "mountOptions is the list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)"},
    {name: "nfs", kind: ::K8S::Api::Core::V1::NFSVolumeSource, key: "nfs", nilable: true, read_only: false, description: "nfs represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    {name: "node_affinity", kind: ::K8S::Api::Core::V1::VolumeNodeAffinity, key: "nodeAffinity", nilable: true, read_only: false, description: "nodeAffinity defines constraints that limit what nodes this volume can be accessed from. This field influences the scheduling of pods that use this volume."},
    {name: "persistent_volume_reclaim_policy", kind: String, key: "persistentVolumeReclaimPolicy", nilable: true, read_only: false, description: "persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)"},
    {name: "photon_persistent_disk", kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource, key: "photonPersistentDisk", nilable: true, read_only: false, description: "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"},
    {name: "portworx_volume", kind: ::K8S::Api::Core::V1::PortworxVolumeSource, key: "portworxVolume", nilable: true, read_only: false, description: "portworxVolume represents a portworx volume attached and mounted on kubelets host machine"},
    {name: "quobyte", kind: ::K8S::Api::Core::V1::QuobyteVolumeSource, key: "quobyte", nilable: true, read_only: false, description: "quobyte represents a Quobyte mount on the host that shares a pod's lifetime"},
    {name: "rbd", kind: ::K8S::Api::Core::V1::RBDPersistentVolumeSource, key: "rbd", nilable: true, read_only: false, description: "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)"},
    {name: "scale_io", kind: ::K8S::Api::Core::V1::ScaleIOPersistentVolumeSource, key: "scaleIO", nilable: true, read_only: false, description: "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."},
    {name: "storage_class_name", kind: String, key: "storageClassName", nilable: true, read_only: false, description: "storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass."},
    {name: "storageos", kind: ::K8S::Api::Core::V1::StorageOSPersistentVolumeSource, key: "storageos", nilable: true, read_only: false, description: "storageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://examples.k8s.io/volumes/storageos/README.md](https://examples.k8s.io/volumes/storageos/README.md)"},
    {name: "volume_mode", kind: String, key: "volumeMode", nilable: true, read_only: false, description: "volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec."},
    {name: "vsphere_volume", kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource, key: "vsphereVolume", nilable: true, read_only: false, description: "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"},

  ]
)
