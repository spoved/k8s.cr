# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CSIStorageCapacity stores the result of one CSI GetCapacity call. For a given StorageClass, this describes the available capacity in a particular topology segment.  This can be used when considering where to instantiate new PersistentVolumes.
  #
  # For example this can express things like: - StorageClass "standard" has "1234 GiB" available in ["topology.kubernetes.io/zone=us-east1" - StorageClass "localssd" has "10 GiB" available in "kubernetes.io/hostname=knode-abc123"]("topology.kubernetes.io/zone=us-east1" - StorageClass "localssd" has "10 GiB" available in "kubernetes.io/hostname=knode-abc123")
  #
  # The following three cases all imply that no capacity is available for a certain combination: - no object exists with suitable topology and storage class name - such an object exists, but the capacity is unset - such an object exists, but the capacity is zero
  #
  # The producer of these objects can decide which approach is more suitable.
  #
  # They are consumed by the kube-scheduler if the CSIStorageCapacity beta feature gate is enabled there and a CSI driver opts into capacity-aware scheduling with CSIDriver.StorageCapacity.
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "CSIStorageCapacity", version: "v1alpha1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/storage.k8s.io/v1alpha1/namespaces/{namespace}/csistoragecapacities/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Storage::V1alpha1::CSIStorageCapacity
    getter api_version : String = "storage/v1alpha1"
    getter kind : String = "CSIStorageCapacity"
    # Capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
    #
    # The semantic is currently (CSI spec 1.2) defined as: The available capacity, in bytes, of the storage that can be used to provision volumes. If not set, that information is currently unavailable and treated like zero capacity.
    property capacity : Int32 | Nil

    # MaximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
    #
    # This is defined since CSI spec 1.4.0 as the largest size that may be used in a CreateVolumeRequest.capacity_range.required_bytes field to create a volume with the same parameters as those in GetCapacityRequest. The corresponding value in the Kubernetes API is ResourceRequirements.Requests in a volume claim.
    property maximum_volume_size : Int32 | Nil

    # Standard object's metadata. The name has no particular meaning. It must be be a DNS subdomain (dots allowed, 253 characters). To ensure that there are no conflicts with other CSI drivers on the cluster, the recommendation is to use csisc-<uuid>, a generated name, or a reverse-domain name which ends with the unique CSI driver name.
    #
    # Objects are namespaced.
    #
    # More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # NodeTopology defines which nodes have access to the storage for which capacity was reported. If not set, the storage is not accessible from any node in the cluster. If empty, the storage is accessible from all nodes. This field is immutable.
    property node_topology : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # The name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable.
    property storage_class_name : String

    ::YAML.mapping({
      api_version:         {type: String, default: "storage/v1alpha1", key: "apiVersion", setter: false},
      kind:                {type: String, default: "CSIStorageCapacity", key: "kind", setter: false},
      capacity:            {type: Int32, nilable: true, key: "capacity", getter: false, setter: false},
      maximum_volume_size: {type: Int32, nilable: true, key: "maximumVolumeSize", getter: false, setter: false},
      metadata:            {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      node_topology:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "nodeTopology", getter: false, setter: false},
      storage_class_name:  {type: String, nilable: false, key: "storageClassName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:         {type: String, default: "storage/v1alpha1", key: "apiVersion", setter: false},
      kind:                {type: String, default: "CSIStorageCapacity", key: "kind", setter: false},
      capacity:            {type: Int32, nilable: true, key: "capacity", getter: false, setter: false},
      maximum_volume_size: {type: Int32, nilable: true, key: "maximumVolumeSize", getter: false, setter: false},
      metadata:            {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      node_topology:       {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "nodeTopology", getter: false, setter: false},
      storage_class_name:  {type: String, nilable: false, key: "storageClassName", getter: false, setter: false},
    }, true)

    def initialize(*, @storage_class_name : String, @capacity : Int32 | Nil = nil, @maximum_volume_size : Int32 | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @node_topology : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil)
    end
  end

  module Resources::Storage::V1alpha1
    alias CSIStorageCapacity = ::K8S::Api::Storage::V1alpha1::CSIStorageCapacity
  end
end
