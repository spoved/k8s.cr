# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodTemplateSpec; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_spec"

module K8S
  # Namespace holding the types for `Api::Core::V1::PodTemplateSpec`.
  module Types::Api::Core::V1::PodTemplateSpec
    alias ValueType = ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta | ::K8S::Api::Core::V1::PodSpec | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # Specification of the desired behavior of the pod. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status))
    abstract def spec : ::K8S::Api::Core::V1::PodSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Core::V1::PodSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Core::V1::PodSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Core::V1::PodSpec?)
  end

  # PodTemplateSpec describes the data a pod should have when created from a template
  @[::K8S::Properties(
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)"},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Core::V1::PodSpec", nilable: true, default: nil, read_only: false, description: "Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},
  )]
  class Api::Core::V1::PodTemplateSpec < ::K8S::Types::Api::Core::V1::PodTemplateSpec::Instance
    include ::K8S::Types::Api::Core::V1::PodTemplateSpec
    include ::K8S::Kubernetes::Object

    # Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))
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

    # Specification of the desired behavior of the pod. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status))
    def spec : ::K8S::Api::Core::V1::PodSpec?
      self.["spec"].as(::K8S::Api::Core::V1::PodSpec?)
    end

    # :ditto:
    def spec! : ::K8S::Api::Core::V1::PodSpec
      self.["spec"].as(::K8S::Api::Core::V1::PodSpec?).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Core::V1::PodSpec?
      self.["spec"]?.as(::K8S::Api::Core::V1::PodSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Core::V1::PodSpec?)
      self.["spec"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::PodSpec },
      ])
end
  end
end
