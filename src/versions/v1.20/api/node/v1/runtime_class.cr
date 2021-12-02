# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # RuntimeClass defines a class of container runtime supported in the cluster. The RuntimeClass is used to determine which container runtime is used to run all containers in a pod. RuntimeClasses are manually defined by a user or cluster provisioner, and referenced in the PodSpec. The Kubelet is responsible for resolving the RuntimeClassName reference before running the pod.  For more details, see [https://kubernetes.io/docs/concepts/containers/runtime-class/](https://kubernetes.io/docs/concepts/containers/runtime-class/)
  @[::K8S::GroupVersionKind(group: "node.k8s.io", kind: "RuntimeClass", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/node.k8s.io/v1/runtimeclasses", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/node.k8s.io/v1/runtimeclasses", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "allow_watch_bookmarks", type: Bool | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "resource_version_match", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/node.k8s.io/v1/runtimeclasses", toplevel: true,
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
           {name: "timeout_seconds", type: Int32 | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/node.k8s.io/v1/runtimeclasses/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/node.k8s.io/v1/runtimeclasses/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/node.k8s.io/v1/runtimeclasses/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/node.k8s.io/v1/runtimeclasses/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Node::V1::RuntimeClass < ::K8S::Kubernetes::Resource
    getter api_version : String = "node/v1"
    getter kind : String = "RuntimeClass"
    # Handler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
    property handler : String

    # More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see
    #  [https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/)
    # This field is in beta starting v1.18 and is only honored by servers that enable the PodOverhead feature.
    property overhead : Api::Node::V1::Overhead | Nil

    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    property scheduling : Api::Node::V1::Scheduling | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "node/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      handler:     {type: String, nilable: false, key: "handler", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      overhead:    {type: Api::Node::V1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      scheduling:  {type: Api::Node::V1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "node/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "RuntimeClass", key: "kind", setter: false},
      handler:     {type: String, nilable: false, key: "handler", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      overhead:    {type: Api::Node::V1::Overhead, nilable: true, key: "overhead", getter: false, setter: false},
      scheduling:  {type: Api::Node::V1::Scheduling, nilable: true, key: "scheduling", getter: false, setter: false},
    }, true)

    def initialize(*, @handler : String, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @overhead : Api::Node::V1::Overhead | Nil = nil, @scheduling : Api::Node::V1::Scheduling | Nil = nil)
    end
  end

  module Resources::Node::V1
    alias RuntimeClass = ::K8S::Api::Node::V1::RuntimeClass
  end
end
