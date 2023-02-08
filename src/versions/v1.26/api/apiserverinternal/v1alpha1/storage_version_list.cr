# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/list_meta"
require "./storage_version"

::K8S::Kubernetes::Resource.define_resource("internal.apiserver.k8s.io", "v1alpha1", "StorageVersionList",
  namespace: "::K8S::Api::Apiserverinternal::V1alpha1",
  list: true,
  list_kind: K8S::Api::Apiserverinternal::V1alpha1::StorageVersion,
  description: "A list of StorageVersions.",
)
