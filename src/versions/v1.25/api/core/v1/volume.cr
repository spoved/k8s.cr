# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./aws_elastic_block_store_volume_source"
require "./azure_disk_volume_source"
require "./azure_file_volume_source"
require "./ceph_fs_volume_source"
require "./cinder_volume_source"
require "./config_map_volume_source"
require "./csi_volume_source"
require "./downward_api_volume_source"
require "./empty_dir_volume_source"
require "./ephemeral_volume_source"
require "./fc_volume_source"
require "./flex_volume_source"
require "./flocker_volume_source"
require "./gce_persistent_disk_volume_source"
require "./git_repo_volume_source"
require "./glusterfs_volume_source"
require "./host_path_volume_source"
require "./iscsi_volume_source"
require "./nfs_volume_source"
require "./persistent_volume_claim_volume_source"
require "./photon_persistent_disk_volume_source"
require "./portworx_volume_source"
require "./projected_volume_source"
require "./quobyte_volume_source"
require "./rbd_volume_source"
require "./scale_io_volume_source"
require "./secret_volume_source"
require "./storage_os_volume_source"
require "./vsphere_virtual_disk_volume_source"

::K8S::Kubernetes::Resource.define_object("Volume",
  namespace: "::K8S::Api::Core::V1",
  properties: [

    {name: "aws_elastic_block_store", kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource, key: "awsElasticBlockStore", nilable: true, read_only: false, description: "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    {name: "azure_disk", kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource, key: "azureDisk", nilable: true, read_only: false, description: "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."},
    {name: "azure_file", kind: ::K8S::Api::Core::V1::AzureFileVolumeSource, key: "azureFile", nilable: true, read_only: false, description: "azureFile represents an Azure File Service mount on the host and bind mount to the pod."},
    {name: "cephfs", kind: ::K8S::Api::Core::V1::CephFSVolumeSource, key: "cephfs", nilable: true, read_only: false, description: "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime"},
    {name: "cinder", kind: ::K8S::Api::Core::V1::CinderVolumeSource, key: "cinder", nilable: true, read_only: false, description: "cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)"},
    {name: "config_map", kind: ::K8S::Api::Core::V1::ConfigMapVolumeSource, key: "configMap", nilable: true, read_only: false, description: "configMap represents a configMap that should populate this volume"},
    {name: "csi", kind: ::K8S::Api::Core::V1::CSIVolumeSource, key: "csi", nilable: true, read_only: false, description: "csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature)."},
    {name: "downward_api", kind: ::K8S::Api::Core::V1::DownwardAPIVolumeSource, key: "downwardAPI", nilable: true, read_only: false, description: "downwardAPI represents downward API about the pod that should populate this volume"},
    {name: "empty_dir", kind: ::K8S::Api::Core::V1::EmptyDirVolumeSource, key: "emptyDir", nilable: true, read_only: false, description: "emptyDir represents a temporary directory that shares a pod's lifetime. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)"},
    {name: "ephemeral", kind: ::K8S::Api::Core::V1::EphemeralVolumeSource, key: "ephemeral", nilable: true, read_only: false, description: "ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.\n\nUse this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity\n   tracking are needed,\nc) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through\n   a PersistentVolumeClaim (see EphemeralVolumeSource for more\n   information on the connection between this volume type\n   and PersistentVolumeClaim).\n\nUse PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.\n\nUse CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.\n\nA pod can use both types of ephemeral volumes and persistent volumes at the same time."},
    {name: "fc", kind: ::K8S::Api::Core::V1::FCVolumeSource, key: "fc", nilable: true, read_only: false, description: "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."},
    {name: "flex_volume", kind: ::K8S::Api::Core::V1::FlexVolumeSource, key: "flexVolume", nilable: true, read_only: false, description: "flexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)"},
    {name: "flocker", kind: ::K8S::Api::Core::V1::FlockerVolumeSource, key: "flocker", nilable: true, read_only: false, description: "flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"},
    {name: "gce_persistent_disk", kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource, key: "gcePersistentDisk", nilable: true, read_only: false, description: "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)"},
    {name: "git_repo", kind: ::K8S::Api::Core::V1::GitRepoVolumeSource, key: "gitRepo", nilable: true, read_only: false, description: "gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."},
    {name: "glusterfs", kind: ::K8S::Api::Core::V1::GlusterfsVolumeSource, key: "glusterfs", nilable: true, read_only: false, description: "glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)"},
    {name: "host_path", kind: ::K8S::Api::Core::V1::HostPathVolumeSource, key: "hostPath", nilable: true, read_only: false, description: "hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},
    {name: "iscsi", kind: ::K8S::Api::Core::V1::ISCSIVolumeSource, key: "iscsi", nilable: true, read_only: false, description: "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md)"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "name of the volume. Must be a DNS_LABEL and unique within the pod. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    {name: "nfs", kind: ::K8S::Api::Core::V1::NFSVolumeSource, key: "nfs", nilable: true, read_only: false, description: "nfs represents an NFS mount on the host that shares a pod's lifetime More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    {name: "persistent_volume_claim", kind: ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource, key: "persistentVolumeClaim", nilable: true, read_only: false, description: "persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)"},
    {name: "photon_persistent_disk", kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource, key: "photonPersistentDisk", nilable: true, read_only: false, description: "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"},
    {name: "portworx_volume", kind: ::K8S::Api::Core::V1::PortworxVolumeSource, key: "portworxVolume", nilable: true, read_only: false, description: "portworxVolume represents a portworx volume attached and mounted on kubelets host machine"},
    {name: "projected", kind: ::K8S::Api::Core::V1::ProjectedVolumeSource, key: "projected", nilable: true, read_only: false, description: "projected items for all in one resources secrets, configmaps, and downward API"},
    {name: "quobyte", kind: ::K8S::Api::Core::V1::QuobyteVolumeSource, key: "quobyte", nilable: true, read_only: false, description: "quobyte represents a Quobyte mount on the host that shares a pod's lifetime"},
    {name: "rbd", kind: ::K8S::Api::Core::V1::RBDVolumeSource, key: "rbd", nilable: true, read_only: false, description: "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)"},
    {name: "scale_io", kind: ::K8S::Api::Core::V1::ScaleIOVolumeSource, key: "scaleIO", nilable: true, read_only: false, description: "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."},
    {name: "secret", kind: ::K8S::Api::Core::V1::SecretVolumeSource, key: "secret", nilable: true, read_only: false, description: "secret represents a secret that should populate this volume. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)"},
    {name: "storageos", kind: ::K8S::Api::Core::V1::StorageOSVolumeSource, key: "storageos", nilable: true, read_only: false, description: "storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes."},
    {name: "vsphere_volume", kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource, key: "vsphereVolume", nilable: true, read_only: false, description: "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"},

  ]
)
