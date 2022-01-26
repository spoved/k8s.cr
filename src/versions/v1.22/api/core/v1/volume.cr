# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Volume; end

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

module K8S
  # Namespace holding the types for `Api::Core::V1::Volume`.
  module Types::Api::Core::V1::Volume
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
    abstract def azure_file : ::K8S::Api::Core::V1::AzureFileVolumeSource?
    # :ditto:
    abstract def azure_file! : ::K8S::Api::Core::V1::AzureFileVolumeSource
    # :ditto:
    abstract def azure_file? : ::K8S::Api::Core::V1::AzureFileVolumeSource?
    # :ditto:
    abstract def azure_file=(value : ::K8S::Api::Core::V1::AzureFileVolumeSource?)
    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    abstract def cephfs : ::K8S::Api::Core::V1::CephFSVolumeSource?
    # :ditto:
    abstract def cephfs! : ::K8S::Api::Core::V1::CephFSVolumeSource
    # :ditto:
    abstract def cephfs? : ::K8S::Api::Core::V1::CephFSVolumeSource?
    # :ditto:
    abstract def cephfs=(value : ::K8S::Api::Core::V1::CephFSVolumeSource?)
    # Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    abstract def cinder : ::K8S::Api::Core::V1::CinderVolumeSource?
    # :ditto:
    abstract def cinder! : ::K8S::Api::Core::V1::CinderVolumeSource
    # :ditto:
    abstract def cinder? : ::K8S::Api::Core::V1::CinderVolumeSource?
    # :ditto:
    abstract def cinder=(value : ::K8S::Api::Core::V1::CinderVolumeSource?)
    # ConfigMap represents a configMap that should populate this volume
    abstract def config_map : ::K8S::Api::Core::V1::ConfigMapVolumeSource?
    # :ditto:
    abstract def config_map! : ::K8S::Api::Core::V1::ConfigMapVolumeSource
    # :ditto:
    abstract def config_map? : ::K8S::Api::Core::V1::ConfigMapVolumeSource?
    # :ditto:
    abstract def config_map=(value : ::K8S::Api::Core::V1::ConfigMapVolumeSource?)
    # CSI (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature).
    abstract def csi : ::K8S::Api::Core::V1::CSIVolumeSource?
    # :ditto:
    abstract def csi! : ::K8S::Api::Core::V1::CSIVolumeSource
    # :ditto:
    abstract def csi? : ::K8S::Api::Core::V1::CSIVolumeSource?
    # :ditto:
    abstract def csi=(value : ::K8S::Api::Core::V1::CSIVolumeSource?)
    # DownwardAPI represents downward API about the pod that should populate this volume
    abstract def downward_api : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?
    # :ditto:
    abstract def downward_api! : ::K8S::Api::Core::V1::DownwardAPIVolumeSource
    # :ditto:
    abstract def downward_api? : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?
    # :ditto:
    abstract def downward_api=(value : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?)
    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)](https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir))
    abstract def empty_dir : ::K8S::Api::Core::V1::EmptyDirVolumeSource?
    # :ditto:
    abstract def empty_dir! : ::K8S::Api::Core::V1::EmptyDirVolumeSource
    # :ditto:
    abstract def empty_dir? : ::K8S::Api::Core::V1::EmptyDirVolumeSource?
    # :ditto:
    abstract def empty_dir=(value : ::K8S::Api::Core::V1::EmptyDirVolumeSource?)
    # Ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
    #
    # Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
    #    tracking are needed,
    # c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
    #    a PersistentVolumeClaim (see EphemeralVolumeSource for more
    #    information on the connection between this volume type
    #    and PersistentVolumeClaim).
    #
    # Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
    #
    # Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
    #
    # A pod can use both types of ephemeral volumes and persistent volumes at the same time.
    #
    # This is a beta feature and only available when the GenericEphemeralVolume feature gate is enabled.
    abstract def ephemeral : ::K8S::Api::Core::V1::EphemeralVolumeSource?
    # :ditto:
    abstract def ephemeral! : ::K8S::Api::Core::V1::EphemeralVolumeSource
    # :ditto:
    abstract def ephemeral? : ::K8S::Api::Core::V1::EphemeralVolumeSource?
    # :ditto:
    abstract def ephemeral=(value : ::K8S::Api::Core::V1::EphemeralVolumeSource?)
    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    abstract def fc : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc! : ::K8S::Api::Core::V1::FCVolumeSource
    # :ditto:
    abstract def fc? : ::K8S::Api::Core::V1::FCVolumeSource?
    # :ditto:
    abstract def fc=(value : ::K8S::Api::Core::V1::FCVolumeSource?)
    # FlexVolume represents a generic volume resource that is [[provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)]([provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.))
    abstract def flex_volume : ::K8S::Api::Core::V1::FlexVolumeSource?
    # :ditto:
    abstract def flex_volume! : ::K8S::Api::Core::V1::FlexVolumeSource
    # :ditto:
    abstract def flex_volume? : ::K8S::Api::Core::V1::FlexVolumeSource?
    # :ditto:
    abstract def flex_volume=(value : ::K8S::Api::Core::V1::FlexVolumeSource?)
    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    abstract def flocker : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker! : ::K8S::Api::Core::V1::FlockerVolumeSource
    # :ditto:
    abstract def flocker? : ::K8S::Api::Core::V1::FlockerVolumeSource?
    # :ditto:
    abstract def flocker=(value : ::K8S::Api::Core::V1::FlockerVolumeSource?)
    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk))
    abstract def gce_persistent_disk : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk! : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource
    # :ditto:
    abstract def gce_persistent_disk? : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?
    # :ditto:
    abstract def gce_persistent_disk=(value : ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource?)
    # GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
    abstract def git_repo : ::K8S::Api::Core::V1::GitRepoVolumeSource?
    # :ditto:
    abstract def git_repo! : ::K8S::Api::Core::V1::GitRepoVolumeSource
    # :ditto:
    abstract def git_repo? : ::K8S::Api::Core::V1::GitRepoVolumeSource?
    # :ditto:
    abstract def git_repo=(value : ::K8S::Api::Core::V1::GitRepoVolumeSource?)
    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)](https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md))
    abstract def glusterfs : ::K8S::Api::Core::V1::GlusterfsVolumeSource?
    # :ditto:
    abstract def glusterfs! : ::K8S::Api::Core::V1::GlusterfsVolumeSource
    # :ditto:
    abstract def glusterfs? : ::K8S::Api::Core::V1::GlusterfsVolumeSource?
    # :ditto:
    abstract def glusterfs=(value : ::K8S::Api::Core::V1::GlusterfsVolumeSource?)
    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
    abstract def host_path : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path! : ::K8S::Api::Core::V1::HostPathVolumeSource
    # :ditto:
    abstract def host_path? : ::K8S::Api::Core::V1::HostPathVolumeSource?
    # :ditto:
    abstract def host_path=(value : ::K8S::Api::Core::V1::HostPathVolumeSource?)
    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md)](https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md))
    abstract def iscsi : ::K8S::Api::Core::V1::ISCSIVolumeSource?
    # :ditto:
    abstract def iscsi! : ::K8S::Api::Core::V1::ISCSIVolumeSource
    # :ditto:
    abstract def iscsi? : ::K8S::Api::Core::V1::ISCSIVolumeSource?
    # :ditto:
    abstract def iscsi=(value : ::K8S::Api::Core::V1::ISCSIVolumeSource?)
    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [[https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)](https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs))
    abstract def nfs : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs! : ::K8S::Api::Core::V1::NFSVolumeSource
    # :ditto:
    abstract def nfs? : ::K8S::Api::Core::V1::NFSVolumeSource?
    # :ditto:
    abstract def nfs=(value : ::K8S::Api::Core::V1::NFSVolumeSource?)
    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims))
    abstract def persistent_volume_claim : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?
    # :ditto:
    abstract def persistent_volume_claim! : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource
    # :ditto:
    abstract def persistent_volume_claim? : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?
    # :ditto:
    abstract def persistent_volume_claim=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?)
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
    # Items for all in one resources secrets, configmaps, and downward API
    abstract def projected : ::K8S::Api::Core::V1::ProjectedVolumeSource?
    # :ditto:
    abstract def projected! : ::K8S::Api::Core::V1::ProjectedVolumeSource
    # :ditto:
    abstract def projected? : ::K8S::Api::Core::V1::ProjectedVolumeSource?
    # :ditto:
    abstract def projected=(value : ::K8S::Api::Core::V1::ProjectedVolumeSource?)
    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    abstract def quobyte : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte! : ::K8S::Api::Core::V1::QuobyteVolumeSource
    # :ditto:
    abstract def quobyte? : ::K8S::Api::Core::V1::QuobyteVolumeSource?
    # :ditto:
    abstract def quobyte=(value : ::K8S::Api::Core::V1::QuobyteVolumeSource?)
    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)](https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md))
    abstract def rbd : ::K8S::Api::Core::V1::RBDVolumeSource?
    # :ditto:
    abstract def rbd! : ::K8S::Api::Core::V1::RBDVolumeSource
    # :ditto:
    abstract def rbd? : ::K8S::Api::Core::V1::RBDVolumeSource?
    # :ditto:
    abstract def rbd=(value : ::K8S::Api::Core::V1::RBDVolumeSource?)
    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    abstract def scale_io : ::K8S::Api::Core::V1::ScaleIOVolumeSource?
    # :ditto:
    abstract def scale_io! : ::K8S::Api::Core::V1::ScaleIOVolumeSource
    # :ditto:
    abstract def scale_io? : ::K8S::Api::Core::V1::ScaleIOVolumeSource?
    # :ditto:
    abstract def scale_io=(value : ::K8S::Api::Core::V1::ScaleIOVolumeSource?)
    # Secret represents a secret that should populate this volume. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)](https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret))
    abstract def secret : ::K8S::Api::Core::V1::SecretVolumeSource?
    # :ditto:
    abstract def secret! : ::K8S::Api::Core::V1::SecretVolumeSource
    # :ditto:
    abstract def secret? : ::K8S::Api::Core::V1::SecretVolumeSource?
    # :ditto:
    abstract def secret=(value : ::K8S::Api::Core::V1::SecretVolumeSource?)
    # StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    abstract def storageos : ::K8S::Api::Core::V1::StorageOSVolumeSource?
    # :ditto:
    abstract def storageos! : ::K8S::Api::Core::V1::StorageOSVolumeSource
    # :ditto:
    abstract def storageos? : ::K8S::Api::Core::V1::StorageOSVolumeSource?
    # :ditto:
    abstract def storageos=(value : ::K8S::Api::Core::V1::StorageOSVolumeSource?)
    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    abstract def vsphere_volume : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume! : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource
    # :ditto:
    abstract def vsphere_volume? : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?
    # :ditto:
    abstract def vsphere_volume=(value : ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource?)
  end

  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  @[::K8S::Properties(
    aws_elastic_block_store: {key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", kind: "::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource", nilable: true, default: nil, read_only: false, description: "AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    azure_disk: {key: "azureDisk", accessor: "azure_disk", kind: "::K8S::Api::Core::V1::AzureDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    azure_file: {key: "azureFile", accessor: "azure_file", kind: "::K8S::Api::Core::V1::AzureFileVolumeSource", nilable: true, default: nil, read_only: false, description: "AzureFile represents an Azure File Service mount on the host and bind mount to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cephfs: {key: "cephfs", accessor: "cephfs", kind: "::K8S::Api::Core::V1::CephFSVolumeSource", nilable: true, default: nil, read_only: false, description: "CephFS represents a Ceph FS mount on the host that shares a pod's lifetime", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    cinder: {key: "cinder", accessor: "cinder", kind: "::K8S::Api::Core::V1::CinderVolumeSource", nilable: true, default: nil, read_only: false, description: "Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    config_map: {key: "configMap", accessor: "config_map", kind: "::K8S::Api::Core::V1::ConfigMapVolumeSource", nilable: true, default: nil, read_only: false, description: "ConfigMap represents a configMap that should populate this volume", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    csi: {key: "csi", accessor: "csi", kind: "::K8S::Api::Core::V1::CSIVolumeSource", nilable: true, default: nil, read_only: false, description: "CSI (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    downward_api: {key: "downwardAPI", accessor: "downward_api", kind: "::K8S::Api::Core::V1::DownwardAPIVolumeSource", nilable: true, default: nil, read_only: false, description: "DownwardAPI represents downward API about the pod that should populate this volume", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    empty_dir: {key: "emptyDir", accessor: "empty_dir", kind: "::K8S::Api::Core::V1::EmptyDirVolumeSource", nilable: true, default: nil, read_only: false, description: "EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ephemeral: {key: "ephemeral", accessor: "ephemeral", kind: "::K8S::Api::Core::V1::EphemeralVolumeSource", nilable: true, default: nil, read_only: false, description: "Ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.\n\nUse this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity\n   tracking are needed,\nc) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through\n   a PersistentVolumeClaim (see EphemeralVolumeSource for more\n   information on the connection between this volume type\n   and PersistentVolumeClaim).\n\nUse PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.\n\nUse CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.\n\nA pod can use both types of ephemeral volumes and persistent volumes at the same time.\n\nThis is a beta feature and only available when the GenericEphemeralVolume feature gate is enabled.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    fc: {key: "fc", accessor: "fc", kind: "::K8S::Api::Core::V1::FCVolumeSource", nilable: true, default: nil, read_only: false, description: "FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    flex_volume: {key: "flexVolume", accessor: "flex_volume", kind: "::K8S::Api::Core::V1::FlexVolumeSource", nilable: true, default: nil, read_only: false, description: "FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    flocker: {key: "flocker", accessor: "flocker", kind: "::K8S::Api::Core::V1::FlockerVolumeSource", nilable: true, default: nil, read_only: false, description: "Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    gce_persistent_disk: {key: "gcePersistentDisk", accessor: "gce_persistent_disk", kind: "::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    git_repo: {key: "gitRepo", accessor: "git_repo", kind: "::K8S::Api::Core::V1::GitRepoVolumeSource", nilable: true, default: nil, read_only: false, description: "GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    glusterfs: {key: "glusterfs", accessor: "glusterfs", kind: "::K8S::Api::Core::V1::GlusterfsVolumeSource", nilable: true, default: nil, read_only: false, description: "Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    host_path: {key: "hostPath", accessor: "host_path", kind: "::K8S::Api::Core::V1::HostPathVolumeSource", nilable: true, default: nil, read_only: false, description: "HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    iscsi: {key: "iscsi", accessor: "iscsi", kind: "::K8S::Api::Core::V1::ISCSIVolumeSource", nilable: true, default: nil, read_only: false, description: "ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    nfs: {key: "nfs", accessor: "nfs", kind: "::K8S::Api::Core::V1::NFSVolumeSource", nilable: true, default: nil, read_only: false, description: "NFS represents an NFS mount on the host that shares a pod's lifetime More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    persistent_volume_claim: {key: "persistentVolumeClaim", accessor: "persistent_volume_claim", kind: "::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource", nilable: true, default: nil, read_only: false, description: "PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    photon_persistent_disk: {key: "photonPersistentDisk", accessor: "photon_persistent_disk", kind: "::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    portworx_volume: {key: "portworxVolume", accessor: "portworx_volume", kind: "::K8S::Api::Core::V1::PortworxVolumeSource", nilable: true, default: nil, read_only: false, description: "PortworxVolume represents a portworx volume attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    projected: {key: "projected", accessor: "projected", kind: "::K8S::Api::Core::V1::ProjectedVolumeSource", nilable: true, default: nil, read_only: false, description: "Items for all in one resources secrets, configmaps, and downward API", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    quobyte: {key: "quobyte", accessor: "quobyte", kind: "::K8S::Api::Core::V1::QuobyteVolumeSource", nilable: true, default: nil, read_only: false, description: "Quobyte represents a Quobyte mount on the host that shares a pod's lifetime", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    rbd: {key: "rbd", accessor: "rbd", kind: "::K8S::Api::Core::V1::RBDVolumeSource", nilable: true, default: nil, read_only: false, description: "RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://examples.k8s.io/volumes/rbd/README.md](https://examples.k8s.io/volumes/rbd/README.md)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scale_io: {key: "scaleIO", accessor: "scale_io", kind: "::K8S::Api::Core::V1::ScaleIOVolumeSource", nilable: true, default: nil, read_only: false, description: "ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    secret: {key: "secret", accessor: "secret", kind: "::K8S::Api::Core::V1::SecretVolumeSource", nilable: true, default: nil, read_only: false, description: "Secret represents a secret that should populate this volume. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    storageos: {key: "storageos", accessor: "storageos", kind: "::K8S::Api::Core::V1::StorageOSVolumeSource", nilable: true, default: nil, read_only: false, description: "StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    vsphere_volume: {key: "vsphereVolume", accessor: "vsphere_volume", kind: "::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource", nilable: true, default: nil, read_only: false, description: "VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::Volume < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::Volume

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
    def azure_file : ::K8S::Api::Core::V1::AzureFileVolumeSource?
      self.["azureFile"].as(::K8S::Api::Core::V1::AzureFileVolumeSource?)
    end

    # :ditto:
    def azure_file! : ::K8S::Api::Core::V1::AzureFileVolumeSource
      self.["azureFile"].as(::K8S::Api::Core::V1::AzureFileVolumeSource?).not_nil!
    end

    # :ditto:
    def azure_file? : ::K8S::Api::Core::V1::AzureFileVolumeSource?
      self.["azureFile"]?.as(::K8S::Api::Core::V1::AzureFileVolumeSource?)
    end

    # :ditto:
    def azure_file=(value : ::K8S::Api::Core::V1::AzureFileVolumeSource?)
      self.["azureFile"] = value
    end

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    def cephfs : ::K8S::Api::Core::V1::CephFSVolumeSource?
      self.["cephfs"].as(::K8S::Api::Core::V1::CephFSVolumeSource?)
    end

    # :ditto:
    def cephfs! : ::K8S::Api::Core::V1::CephFSVolumeSource
      self.["cephfs"].as(::K8S::Api::Core::V1::CephFSVolumeSource?).not_nil!
    end

    # :ditto:
    def cephfs? : ::K8S::Api::Core::V1::CephFSVolumeSource?
      self.["cephfs"]?.as(::K8S::Api::Core::V1::CephFSVolumeSource?)
    end

    # :ditto:
    def cephfs=(value : ::K8S::Api::Core::V1::CephFSVolumeSource?)
      self.["cephfs"] = value
    end

    # Cinder represents a cinder volume attached and mounted on kubelets host machine. More info: [[https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md)](https://examples.k8s.io/mysql-cinder-pd/README.md](https://examples.k8s.io/mysql-cinder-pd/README.md))
    def cinder : ::K8S::Api::Core::V1::CinderVolumeSource?
      self.["cinder"].as(::K8S::Api::Core::V1::CinderVolumeSource?)
    end

    # :ditto:
    def cinder! : ::K8S::Api::Core::V1::CinderVolumeSource
      self.["cinder"].as(::K8S::Api::Core::V1::CinderVolumeSource?).not_nil!
    end

    # :ditto:
    def cinder? : ::K8S::Api::Core::V1::CinderVolumeSource?
      self.["cinder"]?.as(::K8S::Api::Core::V1::CinderVolumeSource?)
    end

    # :ditto:
    def cinder=(value : ::K8S::Api::Core::V1::CinderVolumeSource?)
      self.["cinder"] = value
    end

    # ConfigMap represents a configMap that should populate this volume
    def config_map : ::K8S::Api::Core::V1::ConfigMapVolumeSource?
      self.["configMap"].as(::K8S::Api::Core::V1::ConfigMapVolumeSource?)
    end

    # :ditto:
    def config_map! : ::K8S::Api::Core::V1::ConfigMapVolumeSource
      self.["configMap"].as(::K8S::Api::Core::V1::ConfigMapVolumeSource?).not_nil!
    end

    # :ditto:
    def config_map? : ::K8S::Api::Core::V1::ConfigMapVolumeSource?
      self.["configMap"]?.as(::K8S::Api::Core::V1::ConfigMapVolumeSource?)
    end

    # :ditto:
    def config_map=(value : ::K8S::Api::Core::V1::ConfigMapVolumeSource?)
      self.["configMap"] = value
    end

    # CSI (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers (Beta feature).
    def csi : ::K8S::Api::Core::V1::CSIVolumeSource?
      self.["csi"].as(::K8S::Api::Core::V1::CSIVolumeSource?)
    end

    # :ditto:
    def csi! : ::K8S::Api::Core::V1::CSIVolumeSource
      self.["csi"].as(::K8S::Api::Core::V1::CSIVolumeSource?).not_nil!
    end

    # :ditto:
    def csi? : ::K8S::Api::Core::V1::CSIVolumeSource?
      self.["csi"]?.as(::K8S::Api::Core::V1::CSIVolumeSource?)
    end

    # :ditto:
    def csi=(value : ::K8S::Api::Core::V1::CSIVolumeSource?)
      self.["csi"] = value
    end

    # DownwardAPI represents downward API about the pod that should populate this volume
    def downward_api : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?
      self.["downwardAPI"].as(::K8S::Api::Core::V1::DownwardAPIVolumeSource?)
    end

    # :ditto:
    def downward_api! : ::K8S::Api::Core::V1::DownwardAPIVolumeSource
      self.["downwardAPI"].as(::K8S::Api::Core::V1::DownwardAPIVolumeSource?).not_nil!
    end

    # :ditto:
    def downward_api? : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?
      self.["downwardAPI"]?.as(::K8S::Api::Core::V1::DownwardAPIVolumeSource?)
    end

    # :ditto:
    def downward_api=(value : ::K8S::Api::Core::V1::DownwardAPIVolumeSource?)
      self.["downwardAPI"] = value
    end

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)](https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir))
    def empty_dir : ::K8S::Api::Core::V1::EmptyDirVolumeSource?
      self.["emptyDir"].as(::K8S::Api::Core::V1::EmptyDirVolumeSource?)
    end

    # :ditto:
    def empty_dir! : ::K8S::Api::Core::V1::EmptyDirVolumeSource
      self.["emptyDir"].as(::K8S::Api::Core::V1::EmptyDirVolumeSource?).not_nil!
    end

    # :ditto:
    def empty_dir? : ::K8S::Api::Core::V1::EmptyDirVolumeSource?
      self.["emptyDir"]?.as(::K8S::Api::Core::V1::EmptyDirVolumeSource?)
    end

    # :ditto:
    def empty_dir=(value : ::K8S::Api::Core::V1::EmptyDirVolumeSource?)
      self.["emptyDir"] = value
    end

    # Ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
    #
    # Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
    #    tracking are needed,
    # c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
    #    a PersistentVolumeClaim (see EphemeralVolumeSource for more
    #    information on the connection between this volume type
    #    and PersistentVolumeClaim).
    #
    # Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
    #
    # Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
    #
    # A pod can use both types of ephemeral volumes and persistent volumes at the same time.
    #
    # This is a beta feature and only available when the GenericEphemeralVolume feature gate is enabled.
    def ephemeral : ::K8S::Api::Core::V1::EphemeralVolumeSource?
      self.["ephemeral"].as(::K8S::Api::Core::V1::EphemeralVolumeSource?)
    end

    # :ditto:
    def ephemeral! : ::K8S::Api::Core::V1::EphemeralVolumeSource
      self.["ephemeral"].as(::K8S::Api::Core::V1::EphemeralVolumeSource?).not_nil!
    end

    # :ditto:
    def ephemeral? : ::K8S::Api::Core::V1::EphemeralVolumeSource?
      self.["ephemeral"]?.as(::K8S::Api::Core::V1::EphemeralVolumeSource?)
    end

    # :ditto:
    def ephemeral=(value : ::K8S::Api::Core::V1::EphemeralVolumeSource?)
      self.["ephemeral"] = value
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
    def flex_volume : ::K8S::Api::Core::V1::FlexVolumeSource?
      self.["flexVolume"].as(::K8S::Api::Core::V1::FlexVolumeSource?)
    end

    # :ditto:
    def flex_volume! : ::K8S::Api::Core::V1::FlexVolumeSource
      self.["flexVolume"].as(::K8S::Api::Core::V1::FlexVolumeSource?).not_nil!
    end

    # :ditto:
    def flex_volume? : ::K8S::Api::Core::V1::FlexVolumeSource?
      self.["flexVolume"]?.as(::K8S::Api::Core::V1::FlexVolumeSource?)
    end

    # :ditto:
    def flex_volume=(value : ::K8S::Api::Core::V1::FlexVolumeSource?)
      self.["flexVolume"] = value
    end

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
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

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk))
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

    # GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
    def git_repo : ::K8S::Api::Core::V1::GitRepoVolumeSource?
      self.["gitRepo"].as(::K8S::Api::Core::V1::GitRepoVolumeSource?)
    end

    # :ditto:
    def git_repo! : ::K8S::Api::Core::V1::GitRepoVolumeSource
      self.["gitRepo"].as(::K8S::Api::Core::V1::GitRepoVolumeSource?).not_nil!
    end

    # :ditto:
    def git_repo? : ::K8S::Api::Core::V1::GitRepoVolumeSource?
      self.["gitRepo"]?.as(::K8S::Api::Core::V1::GitRepoVolumeSource?)
    end

    # :ditto:
    def git_repo=(value : ::K8S::Api::Core::V1::GitRepoVolumeSource?)
      self.["gitRepo"] = value
    end

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [[https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md)](https://examples.k8s.io/volumes/glusterfs/README.md](https://examples.k8s.io/volumes/glusterfs/README.md))
    def glusterfs : ::K8S::Api::Core::V1::GlusterfsVolumeSource?
      self.["glusterfs"].as(::K8S::Api::Core::V1::GlusterfsVolumeSource?)
    end

    # :ditto:
    def glusterfs! : ::K8S::Api::Core::V1::GlusterfsVolumeSource
      self.["glusterfs"].as(::K8S::Api::Core::V1::GlusterfsVolumeSource?).not_nil!
    end

    # :ditto:
    def glusterfs? : ::K8S::Api::Core::V1::GlusterfsVolumeSource?
      self.["glusterfs"]?.as(::K8S::Api::Core::V1::GlusterfsVolumeSource?)
    end

    # :ditto:
    def glusterfs=(value : ::K8S::Api::Core::V1::GlusterfsVolumeSource?)
      self.["glusterfs"] = value
    end

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)](https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath))
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

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [[https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md)](https://examples.k8s.io/volumes/iscsi/README.md](https://examples.k8s.io/volumes/iscsi/README.md))
    def iscsi : ::K8S::Api::Core::V1::ISCSIVolumeSource?
      self.["iscsi"].as(::K8S::Api::Core::V1::ISCSIVolumeSource?)
    end

    # :ditto:
    def iscsi! : ::K8S::Api::Core::V1::ISCSIVolumeSource
      self.["iscsi"].as(::K8S::Api::Core::V1::ISCSIVolumeSource?).not_nil!
    end

    # :ditto:
    def iscsi? : ::K8S::Api::Core::V1::ISCSIVolumeSource?
      self.["iscsi"]?.as(::K8S::Api::Core::V1::ISCSIVolumeSource?)
    end

    # :ditto:
    def iscsi=(value : ::K8S::Api::Core::V1::ISCSIVolumeSource?)
      self.["iscsi"] = value
    end

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [[https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names))
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [[https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)](https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs))
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

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [[https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims))
    def persistent_volume_claim : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?
      self.["persistentVolumeClaim"].as(::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?)
    end

    # :ditto:
    def persistent_volume_claim! : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource
      self.["persistentVolumeClaim"].as(::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?).not_nil!
    end

    # :ditto:
    def persistent_volume_claim? : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?
      self.["persistentVolumeClaim"]?.as(::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?)
    end

    # :ditto:
    def persistent_volume_claim=(value : ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource?)
      self.["persistentVolumeClaim"] = value
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

    # Items for all in one resources secrets, configmaps, and downward API
    def projected : ::K8S::Api::Core::V1::ProjectedVolumeSource?
      self.["projected"].as(::K8S::Api::Core::V1::ProjectedVolumeSource?)
    end

    # :ditto:
    def projected! : ::K8S::Api::Core::V1::ProjectedVolumeSource
      self.["projected"].as(::K8S::Api::Core::V1::ProjectedVolumeSource?).not_nil!
    end

    # :ditto:
    def projected? : ::K8S::Api::Core::V1::ProjectedVolumeSource?
      self.["projected"]?.as(::K8S::Api::Core::V1::ProjectedVolumeSource?)
    end

    # :ditto:
    def projected=(value : ::K8S::Api::Core::V1::ProjectedVolumeSource?)
      self.["projected"] = value
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
    def rbd : ::K8S::Api::Core::V1::RBDVolumeSource?
      self.["rbd"].as(::K8S::Api::Core::V1::RBDVolumeSource?)
    end

    # :ditto:
    def rbd! : ::K8S::Api::Core::V1::RBDVolumeSource
      self.["rbd"].as(::K8S::Api::Core::V1::RBDVolumeSource?).not_nil!
    end

    # :ditto:
    def rbd? : ::K8S::Api::Core::V1::RBDVolumeSource?
      self.["rbd"]?.as(::K8S::Api::Core::V1::RBDVolumeSource?)
    end

    # :ditto:
    def rbd=(value : ::K8S::Api::Core::V1::RBDVolumeSource?)
      self.["rbd"] = value
    end

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    def scale_io : ::K8S::Api::Core::V1::ScaleIOVolumeSource?
      self.["scaleIO"].as(::K8S::Api::Core::V1::ScaleIOVolumeSource?)
    end

    # :ditto:
    def scale_io! : ::K8S::Api::Core::V1::ScaleIOVolumeSource
      self.["scaleIO"].as(::K8S::Api::Core::V1::ScaleIOVolumeSource?).not_nil!
    end

    # :ditto:
    def scale_io? : ::K8S::Api::Core::V1::ScaleIOVolumeSource?
      self.["scaleIO"]?.as(::K8S::Api::Core::V1::ScaleIOVolumeSource?)
    end

    # :ditto:
    def scale_io=(value : ::K8S::Api::Core::V1::ScaleIOVolumeSource?)
      self.["scaleIO"] = value
    end

    # Secret represents a secret that should populate this volume. More info: [[https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)](https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret))
    def secret : ::K8S::Api::Core::V1::SecretVolumeSource?
      self.["secret"].as(::K8S::Api::Core::V1::SecretVolumeSource?)
    end

    # :ditto:
    def secret! : ::K8S::Api::Core::V1::SecretVolumeSource
      self.["secret"].as(::K8S::Api::Core::V1::SecretVolumeSource?).not_nil!
    end

    # :ditto:
    def secret? : ::K8S::Api::Core::V1::SecretVolumeSource?
      self.["secret"]?.as(::K8S::Api::Core::V1::SecretVolumeSource?)
    end

    # :ditto:
    def secret=(value : ::K8S::Api::Core::V1::SecretVolumeSource?)
      self.["secret"] = value
    end

    # StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    def storageos : ::K8S::Api::Core::V1::StorageOSVolumeSource?
      self.["storageos"].as(::K8S::Api::Core::V1::StorageOSVolumeSource?)
    end

    # :ditto:
    def storageos! : ::K8S::Api::Core::V1::StorageOSVolumeSource
      self.["storageos"].as(::K8S::Api::Core::V1::StorageOSVolumeSource?).not_nil!
    end

    # :ditto:
    def storageos? : ::K8S::Api::Core::V1::StorageOSVolumeSource?
      self.["storageos"]?.as(::K8S::Api::Core::V1::StorageOSVolumeSource?)
    end

    # :ditto:
    def storageos=(value : ::K8S::Api::Core::V1::StorageOSVolumeSource?)
      self.["storageos"] = value
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
        { key: "awsElasticBlockStore", accessor: "aws_elastic_block_store", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AWSElasticBlockStoreVolumeSource },
        { key: "azureDisk", accessor: "azure_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureDiskVolumeSource },
        { key: "azureFile", accessor: "azure_file", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::AzureFileVolumeSource },
        { key: "cephfs", accessor: "cephfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CephFSVolumeSource },
        { key: "cinder", accessor: "cinder", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CinderVolumeSource },
        { key: "configMap", accessor: "config_map", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapVolumeSource },
        { key: "csi", accessor: "csi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::CSIVolumeSource },
        { key: "downwardAPI", accessor: "downward_api", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::DownwardAPIVolumeSource },
        { key: "emptyDir", accessor: "empty_dir", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EmptyDirVolumeSource },
        { key: "ephemeral", accessor: "ephemeral", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::EphemeralVolumeSource },
        { key: "fc", accessor: "fc", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FCVolumeSource },
        { key: "flexVolume", accessor: "flex_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlexVolumeSource },
        { key: "flocker", accessor: "flocker", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::FlockerVolumeSource },
        { key: "gcePersistentDisk", accessor: "gce_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GCEPersistentDiskVolumeSource },
        { key: "gitRepo", accessor: "git_repo", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GitRepoVolumeSource },
        { key: "glusterfs", accessor: "glusterfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::GlusterfsVolumeSource },
        { key: "hostPath", accessor: "host_path", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HostPathVolumeSource },
        { key: "iscsi", accessor: "iscsi", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ISCSIVolumeSource },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "nfs", accessor: "nfs", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::NFSVolumeSource },
        { key: "persistentVolumeClaim", accessor: "persistent_volume_claim", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PersistentVolumeClaimVolumeSource },
        { key: "photonPersistentDisk", accessor: "photon_persistent_disk", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PhotonPersistentDiskVolumeSource },
        { key: "portworxVolume", accessor: "portworx_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PortworxVolumeSource },
        { key: "projected", accessor: "projected", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ProjectedVolumeSource },
        { key: "quobyte", accessor: "quobyte", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::QuobyteVolumeSource },
        { key: "rbd", accessor: "rbd", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::RBDVolumeSource },
        { key: "scaleIO", accessor: "scale_io", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ScaleIOVolumeSource },
        { key: "secret", accessor: "secret", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::SecretVolumeSource },
        { key: "storageos", accessor: "storageos", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::StorageOSVolumeSource },
        { key: "vsphereVolume", accessor: "vsphere_volume", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::VsphereVirtualDiskVolumeSource },
      ])
end
  end
end
