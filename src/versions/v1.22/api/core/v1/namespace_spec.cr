# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceSpec; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceSpec`.
  module Types::Api::Core::V1::NamespaceSpec
    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    abstract def finalizers : ::Array(String)?
    # :ditto:
    abstract def finalizers! : ::Array(String)
    # :ditto:
    abstract def finalizers? : ::Array(String)?
    # :ditto:
    abstract def finalizers=(value : ::Array(String))
  end

  # NamespaceSpec describes the attributes on a Namespace.
  @[::K8S::Properties(
    finalizers: {key: "finalizers", accessor: "finalizers", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NamespaceSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NamespaceSpec
    k8s_object_accessor("finalizers", finalizers : ::Array(String), true, false, "Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)")

    def initialize(*, finalizers : ::Array(String)? = nil)
      super()
      self.["finalizers"] = finalizers
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "finalizers", accessor: "finalizers", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
    ])
  end
end
