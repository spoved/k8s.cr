# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Node::V1alpha1::RuntimeClassSpec; end

module K8S
  # Namespace holding the types for `Api::Node::V1alpha1::RuntimeClassSpec`.
  module Types::Api::Node::V1alpha1::RuntimeClassSpec
    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
    abstract def runtime_handler : String
    # :ditto:
    abstract def runtime_handler! : String
    # :ditto:
    abstract def runtime_handler? : String?
    # :ditto:
    abstract def runtime_handler=(value : String)
  end

  # RuntimeClassSpec is a specification of a RuntimeClass. It contains parameters that are required to describe the RuntimeClass to the Container Runtime Interface (CRI) implementation, as well as any other components that need to understand how the pod will be run. The RuntimeClassSpec is immutable.
  @[::K8S::Properties(
    runtime_handler: {key: "runtimeHandler", accessor: "runtime_handler", kind: "String", nilable: false, default: nil, read_only: false, description: "RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called \"runc\" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Node::V1alpha1::RuntimeClassSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Node::V1alpha1::RuntimeClassSpec

    # RuntimeHandler specifies the underlying runtime and configuration that the CRI implementation will use to handle pods of this class. The possible values are specific to the node & CRI configuration.  It is assumed that all handlers are available on every node, and handlers of the same name are equivalent on every node. For example, a handler called "runc" might specify that the runc OCI runtime (using native Linux containers) will be used to run the containers in a pod. The RuntimeHandler must conform to the DNS Label (RFC 1123) requirements and is immutable.
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

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "runtimeHandler", accessor: "runtime_handler", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
