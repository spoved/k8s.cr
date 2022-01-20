# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Node::V1::Scheduling; end

require "../../core/v1/toleration"

module K8S
  # Namespace holding the types for `Api::Node::V1::Scheduling`.
  module Types::Api::Node::V1::Scheduling
    alias ValueType = ::Hash(String, String) | ::Array(::K8S::Api::Core::V1::Toleration) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
    abstract def node_selector : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector! : ::Hash(String, String)
    # :ditto:
    abstract def node_selector? : ::Hash(String, String)?
    # :ditto:
    abstract def node_selector=(value : ::Hash(String, String)?)
    # tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
    abstract def tolerations : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations! : ::Array(::K8S::Api::Core::V1::Toleration)
    # :ditto:
    abstract def tolerations? : ::Array(::K8S::Api::Core::V1::Toleration)?
    # :ditto:
    abstract def tolerations=(value : ::Array(::K8S::Api::Core::V1::Toleration)?)
  end

  # Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
  @[::K8S::Properties(
    node_selector: {key: "nodeSelector", accessor: "node_selector", kind: "::Hash(String, String)", nilable: true, default: nil, read_only: false, description: "nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: "atomic"},
    tolerations: {key: "tolerations", accessor: "tolerations", kind: "::Array(::K8S::Api::Core::V1::Toleration)", nilable: true, default: nil, read_only: false, description: "tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: "atomic", x_kubernetes_map_type: nil},
  )]
  class Api::Node::V1::Scheduling < ::K8S::Types::Api::Node::V1::Scheduling::Instance
    include ::K8S::Types::Api::Node::V1::Scheduling
    include ::K8S::Kubernetes::Object

    # nodeSelector lists labels that must be present on nodes that support this RuntimeClass. Pods using this RuntimeClass can only be scheduled to a node matched by this selector. The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts will cause the pod to be rejected in admission.
    def node_selector : ::Hash(String, String)?
      self.["nodeSelector"].as(::Hash(String, String)?)
    end

    # :ditto:
    def node_selector! : ::Hash(String, String)
      self.["nodeSelector"].as(::Hash(String, String)?).not_nil!
    end

    # :ditto:
    def node_selector? : ::Hash(String, String)?
      self.["nodeSelector"]?.as(::Hash(String, String)?)
    end

    # :ditto:
    def node_selector=(value : ::Hash(String, String)?)
      self.["nodeSelector"] = value
    end

    # tolerations are appended (excluding duplicates) to pods running with this RuntimeClass during admission, effectively unioning the set of nodes tolerated by the pod and the RuntimeClass.
    def tolerations : ::Array(::K8S::Api::Core::V1::Toleration)?
      self.["tolerations"].as(::Array(::K8S::Api::Core::V1::Toleration)?)
    end

    # :ditto:
    def tolerations! : ::Array(::K8S::Api::Core::V1::Toleration)
      self.["tolerations"].as(::Array(::K8S::Api::Core::V1::Toleration)?).not_nil!
    end

    # :ditto:
    def tolerations? : ::Array(::K8S::Api::Core::V1::Toleration)?
      self.["tolerations"]?.as(::Array(::K8S::Api::Core::V1::Toleration)?)
    end

    # :ditto:
    def tolerations=(value : ::Array(::K8S::Api::Core::V1::Toleration)?)
      self.["tolerations"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "nodeSelector", accessor: "node_selector", nilable: true, read_only: false, default: nil, kind: ::Hash(String, String) },
        { key: "tolerations", accessor: "tolerations", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::Toleration) },
      ])
end
  end
end
