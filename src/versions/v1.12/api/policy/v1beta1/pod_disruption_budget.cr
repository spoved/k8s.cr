# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Policy::V1beta1::PodDisruptionBudget; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_disruption_budget_spec"
require "./pod_disruption_budget_status"

module K8S
  # Namespace holding the types for `Api::Policy::V1beta1::PodDisruptionBudget`.
  module Types::Api::Policy::V1beta1::PodDisruptionBudget
    alias ValueType = String | ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec | ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil
    alias Instance = ::K8S::Object(ValueType)

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # Specification of the desired behavior of the PodDisruptionBudget.
    abstract def spec : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?)
    # Most recently observed status of the PodDisruptionBudget.
    abstract def status : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?
    # :ditto:
    abstract def status! : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus
    # :ditto:
    abstract def status? : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?
    # :ditto:
    abstract def status=(value : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?)
  end

  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  @[::K8S::GroupVersionKind(group: "policy", kind: "PodDisruptionBudget", version: "v1beta1", full: "io.k8s.api.policy.v1beta1.PodDisruptionBudget")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "policy/v1beta1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))"},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "PodDisruptionBudget", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))"},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))"},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec", nilable: true, default: nil, read_only: false, description: "Specification of the desired behavior of the PodDisruptionBudget."},
    status: {key: "status", accessor: "status", kind: "::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus", nilable: true, default: nil, read_only: false, description: "Most recently observed status of the PodDisruptionBudget."},
  )]
  class Api::Policy::V1beta1::PodDisruptionBudget < ::K8S::Types::Api::Policy::V1beta1::PodDisruptionBudget::Instance
    include ::K8S::Types::Api::Policy::V1beta1::PodDisruptionBudget
    include ::K8S::Kubernetes::Resource::Object

    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    def api_version : String
      self.["apiVersion"].as(String)
    end

    # :ditto:
    def api_version! : String
      self.["apiVersion"].as(String).not_nil!
    end

    # :ditto:
    def api_version? : String?
      self.["apiVersion"]?.as(String?)
    end

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    def kind : String
      self.["kind"].as(String)
    end

    # :ditto:
    def kind! : String
      self.["kind"].as(String).not_nil!
    end

    # :ditto:
    def kind? : String?
      self.["kind"]?.as(String?)
    end

    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
      self.["metadata"].as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?).not_nil!
    end

    # :ditto:
    def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
      self.["metadata"]?.as(::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    end

    # :ditto:
    def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
      self.["metadata"] = value
    end

    # Specification of the desired behavior of the PodDisruptionBudget.
    def spec : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?
      self.["spec"].as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?)
    end

    # :ditto:
    def spec! : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec
      self.["spec"].as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?
      self.["spec"]?.as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec?)
      self.["spec"] = value
    end

    # Most recently observed status of the PodDisruptionBudget.
    def status : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?
      self.["status"].as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?)
    end

    # :ditto:
    def status! : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus
      self.["status"].as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?).not_nil!
    end

    # :ditto:
    def status? : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?
      self.["status"]?.as(::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?)
    end

    # :ditto:
    def status=(value : ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus?)
      self.["status"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "policy/v1beta1", kind: String },
        { key: "kind", accessor: "kind", nilable: false, read_only: true, default: "PodDisruptionBudget", kind: String },
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetSpec },
        { key: "status", accessor: "status", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Policy::V1beta1::PodDisruptionBudgetStatus },
      ])
end
  end

  module Resources::Policy::V1beta1
    alias PodDisruptionBudget = ::K8S::Api::Policy::V1beta1::PodDisruptionBudget
  end
end
