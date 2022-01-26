# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceStatus; end

require "./namespace_condition"

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceStatus`.
  module Types::Api::Core::V1::NamespaceStatus
    # Represents the latest available observations of a namespace's current state.
    abstract def conditions : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
    # :ditto:
    abstract def conditions! : ::Array(::K8S::Api::Core::V1::NamespaceCondition)
    # :ditto:
    abstract def conditions? : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
    # :ditto:
    abstract def conditions=(value : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    #
    # Possible enum values:
    #  - `"Active"` means the namespace is available for use in the system
    #  - `"Terminating"` means the namespace is undergoing graceful termination
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String?)
  end

  # NamespaceStatus is information about the current status of a Namespace.
  @[::K8S::Properties(
    conditions: {key: "conditions", accessor: "conditions", kind: "::Array(::K8S::Api::Core::V1::NamespaceCondition)", nilable: true, default: nil, read_only: false, description: "Represents the latest available observations of a namespace's current state.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)\n\nPossible enum values:\n - `\"Active\"` means the namespace is available for use in the system\n - `\"Terminating\"` means the namespace is undergoing graceful termination", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NamespaceStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NamespaceStatus

    # Represents the latest available observations of a namespace's current state.
    def conditions : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    end

    # :ditto:
    def conditions! : ::Array(::K8S::Api::Core::V1::NamespaceCondition)
      self.["conditions"].as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?).not_nil!
    end

    # :ditto:
    def conditions? : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?
      self.["conditions"]?.as(::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
    end

    # :ditto:
    def conditions=(value : ::Array(::K8S::Api::Core::V1::NamespaceCondition)?)
      self.["conditions"] = value
    end

    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    #
    # Possible enum values:
    #  - `"Active"` means the namespace is available for use in the system
    #  - `"Terminating"` means the namespace is undergoing graceful termination
    def phase : String?
      self.["phase"].as(String?)
    end

    # :ditto:
    def phase! : String
      self.["phase"].as(String?).not_nil!
    end

    # :ditto:
    def phase? : String?
      self.["phase"]?.as(String?)
    end

    # :ditto:
    def phase=(value : String?)
      self.["phase"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "conditions", accessor: "conditions", nilable: true, read_only: false, default: nil, kind: ::Array(::K8S::Api::Core::V1::NamespaceCondition) },
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
