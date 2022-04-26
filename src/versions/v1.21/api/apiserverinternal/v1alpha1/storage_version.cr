# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./storage_version_spec"
require "./storage_version_status"

::K8S::Kubernetes::Resource.define_resource("internal.apiserver.k8s.io", "v1alpha1", "StorageVersion",
  namespace: "::K8S::Api::Apiserverinternal::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionSpec, key: "spec", nilable: false, read_only: false, description: "Spec is an empty spec. It is here to comply with Kubernetes API style."},
    {name: "status", kind: ::K8S::Api::Apiserverinternal::V1alpha1::StorageVersionStatus, key: "status", nilable: false, read_only: false, description: "API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend."},

  ],
  description: "\n Storage version of a specific resource.",
  versions: [{group: "internal.apiserver.k8s.io", kind: "StorageVersion", version: "v1alpha1"}],
)
