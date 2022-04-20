# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./runtime_class_spec"

::K8S::Kubernetes::Resource.define_resource("node.k8s.io", "v1alpha1", "RuntimeClass",
  namespace: "::K8S::Api::Node::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Node::V1alpha1::RuntimeClassSpec, key: "spec", nilable: false, read_only: false, description: "Specification of the RuntimeClass More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ],
  description: "RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are (currently) manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see https://git.k8s.io/enhancements/keps/sig-node/runtime-class.md",
)
