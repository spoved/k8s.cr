# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./storage_class"

::K8S::Kubernetes::Resource.define_resource("storage.k8s.io", "v1beta1", "StorageClassList",
  namespace: "::K8S::Api::Storage::V1beta1",
  list: true,
  list_kind: K8S::Api::Storage::V1beta1::StorageClass,
  description: "StorageClassList is a collection of storage classes.",
)
