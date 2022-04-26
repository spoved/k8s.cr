# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../core/v1/topology_selector_term"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1", "StorageClass",
  namespace: "::K8S::Api::Storage::V1",
  properties: [

    {name: "allow_volume_expansion", kind: ::Bool, key: "allowVolumeExpansion", nilable: true, read_only: false, description: "AllowVolumeExpansion shows whether the storage class allow volume expand"},
    {name: "allowed_topologies", kind: ::Array(::K8S::Api::Core::V1::TopologySelectorTerm), key: "allowedTopologies", nilable: true, read_only: false, description: "Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is alpha-level and is only honored by servers that enable the DynamicProvisioningScheduling feature."},
    {name: "mount_options", kind: ::Array(String), key: "mountOptions", nilable: true, read_only: false, description: "Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid."},
    {name: "parameters", kind: ::Hash(String, String), key: "parameters", nilable: true, read_only: false, description: "Parameters holds the parameters for the provisioner that should create volumes of this storage class."},
    {name: "provisioner", kind: String, key: "provisioner", nilable: false, read_only: false, description: "Provisioner indicates the type of the provisioner."},
    {name: "reclaim_policy", kind: String, key: "reclaimPolicy", nilable: true, read_only: false, description: "Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete."},
    {name: "volume_binding_mode", kind: String, key: "volumeBindingMode", nilable: true, read_only: false, description: "VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is alpha-level and is only honored by servers that enable the VolumeScheduling feature."},

  ],
  description: "StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.\n\nStorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.",
  versions: [{group: "storage.k8s.io", kind: "StorageClass", version: "v1"}],
)
