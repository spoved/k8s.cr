# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceStatus`.
  module Types::Api::Core::V1::NamespaceStatus
    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    abstract def phase : String?
    # :ditto:
    abstract def phase! : String
    # :ditto:
    abstract def phase? : String?
    # :ditto:
    abstract def phase=(value : String)
  end

  # NamespaceStatus is information about the current status of a Namespace.
  @[::K8S::Properties(
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NamespaceStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NamespaceStatus
    k8s_object_accessor("phase", phase : String, true, false, "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)")

    def initialize(*, phase : String? = nil)
      super()
      self.["phase"] = phase
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
