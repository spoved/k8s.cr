# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./csi_storage_capacity"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1alpha1", "CSIStorageCapacityList",
  namespace: "::K8S::Api::Storage::V1alpha1",
  list: true,
  list_kind: K8S::Api::Storage::V1alpha1::CSIStorageCapacity,
  description: "CSIStorageCapacityList is a collection of CSIStorageCapacity objects.",
)
