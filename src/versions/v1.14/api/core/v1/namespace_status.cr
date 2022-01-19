# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NamespaceStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::NamespaceStatus`.
  module Types::Api::Core::V1::NamespaceStatus
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
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
    phase: {key: "phase", accessor: "phase", kind: "String", nilable: true, default: nil, read_only: false, description: "Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)"},
  )]
  class Api::Core::V1::NamespaceStatus < ::K8S::Types::Api::Core::V1::NamespaceStatus::Instance
    include ::K8S::Types::Api::Core::V1::NamespaceStatus
    include ::K8S::Kubernetes::Object

    # Phase is the current lifecycle phase of the namespace. More info: [[https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/))
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
        { key: "phase", accessor: "phase", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
