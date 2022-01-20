# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Node::V1alpha1::RuntimeClassSpec; end

require "./overhead"
require "./scheduling"

module K8S
  # Namespace holding the types for `Api::Node::V1alpha1::RuntimeClassSpec`.
  module Types::Api::Node::V1alpha1::RuntimeClassSpec
    alias ValueType = ::K8S::Api::Node::V1alpha1::Overhead | String | ::K8S::Api::Node::V1alpha1::Scheduling | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [[https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.))
    abstract def overhead : ::K8S::Api::Node::V1alpha1::Overhead?
    # :ditto:
    abstract def overhead! : ::K8S::Api::Node::V1alpha1::Overhead
    # :ditto:
    abstract def overhead? : ::K8S::Api::Node::V1alpha1::Overhead?
    # :ditto:
    abstract def overhead=(value : ::K8S::Api::Node::V1alpha1::Overhead?)
    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
    abstract def runtime_handler : String
    # :ditto:
    abstract def runtime_handler! : String
    # :ditto:
    abstract def runtime_handler? : String?
    # :ditto:
    abstract def runtime_handler=(value : String)
    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    abstract def scheduling : ::K8S::Api::Node::V1alpha1::Scheduling?
    # :ditto:
    abstract def scheduling! : ::K8S::Api::Node::V1alpha1::Scheduling
    # :ditto:
    abstract def scheduling? : ::K8S::Api::Node::V1alpha1::Scheduling?
    # :ditto:
    abstract def scheduling=(value : ::K8S::Api::Node::V1alpha1::Scheduling?)
  end

  # RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
  @[::K8S::Properties(
    overhead: {key: "overhead", accessor: "overhead", kind: "::K8S::Api::Node::V1alpha1::Overhead", nilable: true, default: nil, read_only: false, description: "Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    runtime_handler: {key: "runtimeHandler", accessor: "runtime_handler", kind: "String", nilable: false, default: nil, read_only: false, description: "RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    scheduling: {key: "scheduling", accessor: "scheduling", kind: "::K8S::Api::Node::V1alpha1::Scheduling", nilable: true, default: nil, read_only: false, description: "Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Node::V1alpha1::RuntimeClassSpec < ::K8S::Types::Api::Node::V1alpha1::RuntimeClassSpec::Instance
    include ::K8S::Types::Api::Node::V1alpha1::RuntimeClassSpec
    include ::K8S::Kubernetes::Object

    # Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. For more details, see [[https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.)](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.](https://git.k8s.io/enhancements/keps/sig-node/20190226-pod-overhead.md This field is alpha-level as of Kubernetes v1.15, and is only honored by servers that enable the PodOverhead feature.))
    def overhead : ::K8S::Api::Node::V1alpha1::Overhead?
      self.["overhead"].as(::K8S::Api::Node::V1alpha1::Overhead?)
    end

    # :ditto:
    def overhead! : ::K8S::Api::Node::V1alpha1::Overhead
      self.["overhead"].as(::K8S::Api::Node::V1alpha1::Overhead?).not_nil!
    end

    # :ditto:
    def overhead? : ::K8S::Api::Node::V1alpha1::Overhead?
      self.["overhead"]?.as(::K8S::Api::Node::V1alpha1::Overhead?)
    end

    # :ditto:
    def overhead=(value : ::K8S::Api::Node::V1alpha1::Overhead?)
      self.["overhead"] = value
    end

    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must be lowercase, conform to the DNS Label (RFC 1123) requirements, and is immutable.
    def runtime_handler : String
      self.["runtimeHandler"].as(String)
    end

    # :ditto:
    def runtime_handler! : String
      self.["runtimeHandler"].as(String).not_nil!
    end

    # :ditto:
    def runtime_handler? : String?
      self.["runtimeHandler"]?.as(String?)
    end

    # :ditto:
    def runtime_handler=(value : String)
      self.["runtimeHandler"] = value
    end

    # Scheduling holds the scheduling constraints to ensure that pods running with this RuntimeClass are scheduled to nodes that support it. If scheduling is nil, this RuntimeClass is assumed to be supported by all nodes.
    def scheduling : ::K8S::Api::Node::V1alpha1::Scheduling?
      self.["scheduling"].as(::K8S::Api::Node::V1alpha1::Scheduling?)
    end

    # :ditto:
    def scheduling! : ::K8S::Api::Node::V1alpha1::Scheduling
      self.["scheduling"].as(::K8S::Api::Node::V1alpha1::Scheduling?).not_nil!
    end

    # :ditto:
    def scheduling? : ::K8S::Api::Node::V1alpha1::Scheduling?
      self.["scheduling"]?.as(::K8S::Api::Node::V1alpha1::Scheduling?)
    end

    # :ditto:
    def scheduling=(value : ::K8S::Api::Node::V1alpha1::Scheduling?)
      self.["scheduling"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "overhead", accessor: "overhead", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Node::V1alpha1::Overhead },
        { key: "runtimeHandler", accessor: "runtime_handler", nilable: false, read_only: false, default: nil, kind: String },
        { key: "scheduling", accessor: "scheduling", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Node::V1alpha1::Scheduling },
      ])
end
  end
end
