# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../../../apimachinery/apis/meta/v1/label_selector"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1alpha1", "CSIStorageCapacity",
  namespace: "::K8S::Api::Storage::V1alpha1",
  properties: [

    {name: "capacity", kind: Union(::Int32 | ::String), key: "capacity", nilable: true, read_only: false, description: "Capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.\n\nThe semantic is currently (CSI spec 1.2) defined as: The available capacity, in bytes, of the storage that can be used to provision volumes. If not set, that information is currently unavailable and treated like zero capacity."},
    {name: "maximum_volume_size", kind: Union(::Int32 | ::String), key: "maximumVolumeSize", nilable: true, read_only: false, description: "MaximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.\n\nThis is defined since CSI spec 1.4.0 as the largest size that may be used in a CreateVolumeRequest.capacity_range.required_bytes field to create a volume with the same parameters as those in GetCapacityRequest. The corresponding value in the Kubernetes API is ResourceRequirements.Requests in a volume claim."},
    {name: "node_topology", kind: ::K8S::Apimachinery::Apis::Meta::V1::LabelSelector, key: "nodeTopology", nilable: true, read_only: false, description: "NodeTopology defines which nodes have access to the storage for which capacity was reported. If not set, the storage is not accessible from any node in the cluster. If empty, the storage is accessible from all nodes. This field is immutable."},
    {name: "storage_class_name", kind: String, key: "storageClassName", nilable: false, read_only: false, description: "The name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable."},

  ],
  description: "CSIStorageCapacity stores the result of one CSI GetCapacity call. For a given StorageClass, this describes the available capacity in a particular topology segment.  This can be used when considering where to instantiate new PersistentVolumes.\n\nFor example this can express things like: - StorageClass \"standard\" has \"1234 GiB\" available in \"topology.kubernetes.io/zone=us-east1\" - StorageClass \"localssd\" has \"10 GiB\" available in \"kubernetes.io/hostname=knode-abc123\"\n\nThe following three cases all imply that no capacity is available for a certain combination: - no object exists with suitable topology and storage class name - such an object exists, but the capacity is unset - such an object exists, but the capacity is zero\n\nThe producer of these objects can decide which approach is more suitable.\n\nThey are consumed by the kube-scheduler if the CSIStorageCapacity beta feature gate is enabled there and a CSI driver opts into capacity-aware scheduling with CSIDriver.StorageCapacity.",
  versions: [{group: "storage.k8s.io", kind: "CSIStorageCapacity", version: "v1alpha1"}],
)
