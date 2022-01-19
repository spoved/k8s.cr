# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceSpec; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceSpec`.
  module Types::Api::Core::V1::NamespaceSpec
    alias ValueType = ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    abstract def finalizers : ::Array(String)?
    # :ditto:
    abstract def finalizers! : ::Array(String)
    # :ditto:
    abstract def finalizers? : ::Array(String)?
    # :ditto:
    abstract def finalizers=(value : ::Array(String)?)
  end

  # NamespaceSpec describes the attributes on a Namespace.
  @[::K8S::Properties(
    finalizers: {key: "finalizers", accessor: "finalizers", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)"},
  )]
  class Api::Core::V1::NamespaceSpec < ::K8S::Types::Api::Core::V1::NamespaceSpec::Instance
    include ::K8S::Types::Api::Core::V1::NamespaceSpec
    include ::K8S::Kubernetes::Object

    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
    def finalizers : ::Array(String)?
      self.["finalizers"].as(::Array(String)?)
    end

    # :ditto:
    def finalizers! : ::Array(String)
      self.["finalizers"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def finalizers? : ::Array(String)?
      self.["finalizers"]?.as(::Array(String)?)
    end

    # :ditto:
    def finalizers=(value : ::Array(String)?)
      self.["finalizers"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "finalizers", accessor: "finalizers", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
