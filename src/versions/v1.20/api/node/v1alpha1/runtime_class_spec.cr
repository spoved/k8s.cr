# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./overhead"
require "./scheduling"

::K8S::Kubernetes::Resource.define_object("RuntimeClassSpec",
  namespace: "::K8S::Api::Node::V1alpha1",
  properties: [

    {name: "overhead", kind: ::K8S::Api::Node::V1alpha1::Overhead, key: "overhead", nilable: true, read_only: false, description: "Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)"},
    {name: "runtime_handler", kind: String, key: "runtimeHandler", nilable: false, read_only: false, description: "RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable."},
    {name: "scheduling", kind: ::K8S::Api::Node::V1alpha1::Scheduling, key: "scheduling", nilable: true, read_only: false, description: "Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes."},

  ]
)
