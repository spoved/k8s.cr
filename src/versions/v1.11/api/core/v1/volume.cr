# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  @[::K8S::Properties(
    aws_elastic_block_store: {type: Api::Core::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore", getter: false, setter: false},
    azure_disk: {type: Api::Core::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk", getter: false, setter: false},
    azure_file: {type: Api::Core::V1::AzureFileVolumeSource, nilable: true, key: "azureFile", getter: false, setter: false},
    cephfs: {type: Api::Core::V1::CephFSVolumeSource, nilable: true, key: "cephfs", getter: false, setter: false},
    cinder: {type: Api::Core::V1::CinderVolumeSource, nilable: true, key: "cinder", getter: false, setter: false},
    config_map: {type: Api::Core::V1::ConfigMapVolumeSource, nilable: true, key: "configMap", getter: false, setter: false},
    downward_api: {type: Api::Core::V1::DownwardAPIVolumeSource, nilable: true, key: "downwardAPI", getter: false, setter: false},
    empty_dir: {type: Api::Core::V1::EmptyDirVolumeSource, nilable: true, key: "emptyDir", getter: false, setter: false},
    fc: {type: Api::Core::V1::FCVolumeSource, nilable: true, key: "fc", getter: false, setter: false},
    flex_volume: {type: Api::Core::V1::FlexVolumeSource, nilable: true, key: "flexVolume", getter: false, setter: false},
    flocker: {type: Api::Core::V1::FlockerVolumeSource, nilable: true, key: "flocker", getter: false, setter: false},
    gce_persistent_disk: {type: Api::Core::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk", getter: false, setter: false},
    git_repo: {type: Api::Core::V1::GitRepoVolumeSource, nilable: true, key: "gitRepo", getter: false, setter: false},
    glusterfs: {type: Api::Core::V1::GlusterfsVolumeSource, nilable: true, key: "glusterfs", getter: false, setter: false},
    host_path: {type: Api::Core::V1::HostPathVolumeSource, nilable: true, key: "hostPath", getter: false, setter: false},
    iscsi: {type: Api::Core::V1::ISCSIVolumeSource, nilable: true, key: "iscsi", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    nfs: {type: Api::Core::V1::NFSVolumeSource, nilable: true, key: "nfs", getter: false, setter: false},
    persistent_volume_claim: {type: Api::Core::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: "persistentVolumeClaim", getter: false, setter: false},
    photon_persistent_disk: {type: Api::Core::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk", getter: false, setter: false},
    portworx_volume: {type: Api::Core::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume", getter: false, setter: false},
    projected: {type: Api::Core::V1::ProjectedVolumeSource, nilable: true, key: "projected", getter: false, setter: false},
    quobyte: {type: Api::Core::V1::QuobyteVolumeSource, nilable: true, key: "quobyte", getter: false, setter: false},
    rbd: {type: Api::Core::V1::RBDVolumeSource, nilable: true, key: "rbd", getter: false, setter: false},
    scale_io: {type: Api::Core::V1::ScaleIOVolumeSource, nilable: true, key: "scaleIO", getter: false, setter: false},
    secret: {type: Api::Core::V1::SecretVolumeSource, nilable: true, key: "secret", getter: false, setter: false},
    storageos: {type: Api::Core::V1::StorageOSVolumeSource, nilable: true, key: "storageos", getter: false, setter: false},
    vsphere_volume: {type: Api::Core::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume", getter: false, setter: false},
  )]
  class Api::Core::V1::Volume
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

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
    property azure_file : Api::Core::V1::AzureFileVolumeSource | Nil

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "cephfs", emit_null: false)]
    @[::YAML::Field(key: "cephfs", emit_null: false)]
    property cephfs : Api::Core::V1::CephFSVolumeSource | Nil

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "cinder", emit_null: false)]
    @[::YAML::Field(key: "cinder", emit_null: false)]
    property cinder : Api::Core::V1::CinderVolumeSource | Nil

    # ConfigMap represents a configMap that should populate this volume
    @[::JSON::Field(key: "configMap", emit_null: false)]
    @[::YAML::Field(key: "configMap", emit_null: false)]
    property config_map : Api::Core::V1::ConfigMapVolumeSource | Nil

    # DownwardAPI represents downward API about the pod that should populate this volume
    @[::JSON::Field(key: "downwardAPI", emit_null: false)]
    @[::YAML::Field(key: "downwardAPI", emit_null: false)]
    property downward_api : Api::Core::V1::DownwardAPIVolumeSource | Nil

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)
    @[::JSON::Field(key: "emptyDir", emit_null: false)]
    @[::YAML::Field(key: "emptyDir", emit_null: false)]
    property empty_dir : Api::Core::V1::EmptyDirVolumeSource | Nil

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    @[::JSON::Field(key: "fc", emit_null: false)]
    @[::YAML::Field(key: "fc", emit_null: false)]
    property fc : Api::Core::V1::FCVolumeSource | Nil

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin.](provisioned/attached using an exec based plugin.)
    @[::JSON::Field(key: "flexVolume", emit_null: false)]
    @[::YAML::Field(key: "flexVolume", emit_null: false)]
    property flex_volume : Api::Core::V1::FlexVolumeSource | Nil

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    @[::JSON::Field(key: "flocker", emit_null: false)]
    @[::YAML::Field(key: "flocker", emit_null: false)]
    property flocker : Api::Core::V1::FlockerVolumeSource | Nil

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "gcePersistentDisk", emit_null: false)]
    @[::YAML::Field(key: "gcePersistentDisk", emit_null: false)]
    property gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil

    # GitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
    @[::JSON::Field(key: "gitRepo", emit_null: false)]
    @[::YAML::Field(key: "gitRepo", emit_null: false)]
    property git_repo : Api::Core::V1::GitRepoVolumeSource | Nil

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    @[::JSON::Field(key: "glusterfs", emit_null: false)]
    @[::YAML::Field(key: "glusterfs", emit_null: false)]
    property glusterfs : Api::Core::V1::GlusterfsVolumeSource | Nil

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    @[::JSON::Field(key: "hostPath", emit_null: false)]
    @[::YAML::Field(key: "hostPath", emit_null: false)]
    property host_path : Api::Core::V1::HostPathVolumeSource | Nil

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md](https://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md)
    @[::JSON::Field(key: "iscsi", emit_null: false)]
    @[::YAML::Field(key: "iscsi", emit_null: false)]
    property iscsi : Api::Core::V1::ISCSIVolumeSource | Nil

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)
    @[::JSON::Field(key: "nfs", emit_null: false)]
    @[::YAML::Field(key: "nfs", emit_null: false)]
    property nfs : Api::Core::V1::NFSVolumeSource | Nil

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)
    @[::JSON::Field(key: "persistentVolumeClaim", emit_null: false)]
    @[::YAML::Field(key: "persistentVolumeClaim", emit_null: false)]
    property persistent_volume_claim : Api::Core::V1::PersistentVolumeClaimVolumeSource | Nil

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    @[::JSON::Field(key: "photonPersistentDisk", emit_null: false)]
    @[::YAML::Field(key: "photonPersistentDisk", emit_null: false)]
    property photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "portworxVolume", emit_null: false)]
    @[::YAML::Field(key: "portworxVolume", emit_null: false)]
    property portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil

    # Items for all in one resources secrets, configmaps, and downward API
    @[::JSON::Field(key: "projected", emit_null: false)]
    @[::YAML::Field(key: "projected", emit_null: false)]
    property projected : Api::Core::V1::ProjectedVolumeSource | Nil

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "quobyte", emit_null: false)]
    @[::YAML::Field(key: "quobyte", emit_null: false)]
    property quobyte : Api::Core::V1::QuobyteVolumeSource | Nil

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    @[::JSON::Field(key: "rbd", emit_null: false)]
    @[::YAML::Field(key: "rbd", emit_null: false)]
    property rbd : Api::Core::V1::RBDVolumeSource | Nil

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @[::JSON::Field(key: "scaleIO", emit_null: false)]
    @[::YAML::Field(key: "scaleIO", emit_null: false)]
    property scale_io : Api::Core::V1::ScaleIOVolumeSource | Nil

    # Secret represents a secret that should populate this volume. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)
    @[::JSON::Field(key: "secret", emit_null: false)]
    @[::YAML::Field(key: "secret", emit_null: false)]
    property secret : Api::Core::V1::SecretVolumeSource | Nil

    # StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    @[::JSON::Field(key: "storageos", emit_null: false)]
    @[::YAML::Field(key: "storageos", emit_null: false)]
    property storageos : Api::Core::V1::StorageOSVolumeSource | Nil

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "vsphereVolume", emit_null: false)]
    @[::YAML::Field(key: "vsphereVolume", emit_null: false)]
    property vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil

    def initialize(*, @name : String, @aws_elastic_block_store : Api::Core::V1::AWSElasticBlockStoreVolumeSource | Nil = nil, @azure_disk : Api::Core::V1::AzureDiskVolumeSource | Nil = nil, @azure_file : Api::Core::V1::AzureFileVolumeSource | Nil = nil, @cephfs : Api::Core::V1::CephFSVolumeSource | Nil = nil, @cinder : Api::Core::V1::CinderVolumeSource | Nil = nil, @config_map : Api::Core::V1::ConfigMapVolumeSource | Nil = nil, @downward_api : Api::Core::V1::DownwardAPIVolumeSource | Nil = nil, @empty_dir : Api::Core::V1::EmptyDirVolumeSource | Nil = nil, @fc : Api::Core::V1::FCVolumeSource | Nil = nil, @flex_volume : Api::Core::V1::FlexVolumeSource | Nil = nil, @flocker : Api::Core::V1::FlockerVolumeSource | Nil = nil, @gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil = nil, @git_repo : Api::Core::V1::GitRepoVolumeSource | Nil = nil, @glusterfs : Api::Core::V1::GlusterfsVolumeSource | Nil = nil, @host_path : Api::Core::V1::HostPathVolumeSource | Nil = nil, @iscsi : Api::Core::V1::ISCSIVolumeSource | Nil = nil, @nfs : Api::Core::V1::NFSVolumeSource | Nil = nil, @persistent_volume_claim : Api::Core::V1::PersistentVolumeClaimVolumeSource | Nil = nil, @photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil = nil, @portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil = nil, @projected : Api::Core::V1::ProjectedVolumeSource | Nil = nil, @quobyte : Api::Core::V1::QuobyteVolumeSource | Nil = nil, @rbd : Api::Core::V1::RBDVolumeSource | Nil = nil, @scale_io : Api::Core::V1::ScaleIOVolumeSource | Nil = nil, @secret : Api::Core::V1::SecretVolumeSource | Nil = nil, @storageos : Api::Core::V1::StorageOSVolumeSource | Nil = nil, @vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil = nil)
    end
  end
end
