# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Batch::V1beta1::JobTemplateSpec; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../v1/job_spec"

module K8S
  # Namespace holding the types for `Api::Batch::V1beta1::JobTemplateSpec`.
  module Types::Api::Batch::V1beta1::JobTemplateSpec
    # Standard object's metadata of the jobs created from this template. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?)
    # Specification of the desired behavior of the job. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status))
    abstract def spec : ::K8S::Api::Batch::V1::JobSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Batch::V1::JobSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Batch::V1::JobSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Batch::V1::JobSpec?)
  end

  # JobTemplateSpec describes the data a Job should have when created from a template
  @[::K8S::Properties(
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata of the jobs created from this template. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Batch::V1::JobSpec", nilable: true, default: nil, read_only: false, description: "Specification of the desired behavior of the job. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Batch::V1beta1::JobTemplateSpec < ::K8S::GenericObject
    include ::K8S::Types::Api::Batch::V1beta1::JobTemplateSpec

    # Standard object's metadata of the jobs created from this template. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata))
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

    # Specification of the desired behavior of the job. More info: [[https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status))
    def spec : ::K8S::Api::Batch::V1::JobSpec?
      self.["spec"].as(::K8S::Api::Batch::V1::JobSpec?)
    end

    # :ditto:
    def spec! : ::K8S::Api::Batch::V1::JobSpec
      self.["spec"].as(::K8S::Api::Batch::V1::JobSpec?).not_nil!
    end

    # :ditto:
    def spec? : ::K8S::Api::Batch::V1::JobSpec?
      self.["spec"]?.as(::K8S::Api::Batch::V1::JobSpec?)
    end

    # :ditto:
    def spec=(value : ::K8S::Api::Batch::V1::JobSpec?)
      self.["spec"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta },
        { key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Batch::V1::JobSpec },
      ])
end
  end
end
