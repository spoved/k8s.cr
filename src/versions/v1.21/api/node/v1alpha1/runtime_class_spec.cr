# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
  class Api::Node::V1alpha1::RuntimeClassSpec
    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)
    property overhead : Api::Node::V1alpha1::Overhead | Nil

    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
    property runtime_handler : String

    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    property scheduling : Api::Node::V1alpha1::Scheduling | Nil

    ::YAML.mapping({
      overhead:        {type: Api::Node::V1alpha1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      runtime_handler: {type: String, nilable: false, key: "runtimeHandler", getter: false, setter: false},
      scheduling:      {type: Api::Node::V1alpha1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      overhead:        {type: Api::Node::V1alpha1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      runtime_handler: {type: String, nilable: false, key: "runtimeHandler", getter: false, setter: false},
      scheduling:      {type: Api::Node::V1alpha1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    def initialize(*, @runtime_handler : String, @overhead : Api::Node::V1alpha1::Overhead | Nil = nil, @scheduling : Api::Node::V1alpha1::Scheduling | Nil = nil)
    end
  end
end
