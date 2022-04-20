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

    {name: "aws_elastic_block_store", kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource, key: "awsElasticBlockStore", nilable: true, read_only: false, description: "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)"},
    {name: "azure_disk", kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource, key: "azureDisk", nilable: true, read_only: false, description: "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod."},
    {name: "azure_file", kind: ::K8S::Api::Core::V1::AzureFileVolumeSource, key: "azureFile", nilable: true, read_only: false, description: "AzureFile represents an Azure File Service mount on the host and bind mount to the pod."},
    {name: "cephfs", kind: ::K8S::Api::Core::V1::CephFSVolumeSource, key: "cephfs", nilable: true, read_only: false, description: "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime"},
    {name: "cinder", kind: ::K8S::Api::Core::V1::CinderVolumeSource, key: "cinder", nilable: true, read_only: false, description: "Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)"},
    {name: "config_map", kind: ::K8S::Api::Core::V1::ConfigMapVolumeSource, key: "configMap", nilable: true, read_only: false, description: "ConfigMap represents a configMap that should populate this volume"},
    {name: "csi", kind: ::K8S::Api::Core::V1::CSIVolumeSource, key: "csi", nilable: true, read_only: false, description: "CSI (Container Storage Interface) represents storage that is handled by an external CSI driver (Alpha feature)."},
    {name: "downward_api", kind: ::K8S::Api::Core::V1::DownwardAPIVolumeSource, key: "downwardAPI", nilable: true, read_only: false, description: "DownwardAPI represents downward API about the pod that should populate this volume"},
    {name: "empty_dir", kind: ::K8S::Api::Core::V1::EmptyDirVolumeSource, key: "emptyDir", nilable: true, read_only: false, description: "EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)"},
    {name: "fc", kind: ::K8S::Api::Core::V1::FCVolumeSource, key: "fc", nilable: true, read_only: false, description: "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."},
    {name: "flex_volume", kind: ::K8S::Api::Core::V1::FlexVolumeSource, key: "flexVolume", nilable: true, read_only: false, description: "FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)"},
    {name: "flocker", kind: ::K8S::Api::Core::V1::FlockerVolumeSource, key: "flocker", nilable: true, read_only: false, description: "Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running"},
    {name: "gce_persistent_disk", kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource, key: "gcePersistentDisk", nilable: true, read_only: false, description: "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)"},
    {name: "git_repo", kind: ::K8S::Api::Core::V1::GitRepoVolumeSource, key: "gitRepo", nilable: true, read_only: false, description: "GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."},
    {name: "glusterfs", kind: ::K8S::Api::Core::V1::GlusterfsVolumeSource, key: "glusterfs", nilable: true, read_only: false, description: "Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)"},
    {name: "host_path", kind: ::K8S::Api::Core::V1::HostPathVolumeSource, key: "hostPath", nilable: true, read_only: false, description: "HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)"},
    {name: "iscsi", kind: ::K8S::Api::Core::V1::ISCSIVolumeSource, key: "iscsi", nilable: true, read_only: false, description: "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md)"},
    {name: "name", kind: String, key: "name", nilable: false, read_only: false, description: "Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)"},
    {name: "nfs", kind: ::K8S::Api::Core::V1::NFSVolumeSource, key: "nfs", nilable: true, read_only: false, description: "NFS represents an NFS mount on the host that shares a pod's lifetime More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)"},
    {name: "persistent_volume_claim", kind: ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource, key: "persistentVolumeClaim", nilable: true, read_only: false, description: "PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)"},
    {name: "photon_persistent_disk", kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource, key: "photonPersistentDisk", nilable: true, read_only: false, description: "PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine"},
    {name: "portworx_volume", kind: ::K8S::Api::Core::V1::PortworxVolumeSource, key: "portworxVolume", nilable: true, read_only: false, description: "PortworxVolume represents a portworx volume attached and mounted on kubelets host machine"},
    {name: "projected", kind: ::K8S::Api::Core::V1::ProjectedVolumeSource, key: "projected", nilable: true, read_only: false, description: "Items for all in one resources secrets, configmaps, and downward API"},
    {name: "quobyte", kind: ::K8S::Api::Core::V1::QuobyteVolumeSource, key: "quobyte", nilable: true, read_only: false, description: "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime"},
    {name: "rbd", kind: ::K8S::Api::Core::V1::RBDVolumeSource, key: "rbd", nilable: true, read_only: false, description: "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)"},
    {name: "scale_io", kind: ::K8S::Api::Core::V1::ScaleIOVolumeSource, key: "scaleIO", nilable: true, read_only: false, description: "ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes."},
    {name: "secret", kind: ::K8S::Api::Core::V1::SecretVolumeSource, key: "secret", nilable: true, read_only: false, description: "Secret represents a secret that should populate this volume. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)"},
    {name: "storageos", kind: ::K8S::Api::Core::V1::StorageOSVolumeSource, key: "storageos", nilable: true, read_only: false, description: "StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes."},
    {name: "vsphere_volume", kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource, key: "vsphereVolume", nilable: true, read_only: false, description: "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine"},

  ]
)
