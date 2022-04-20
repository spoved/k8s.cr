# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "../v1/job_spec"

::K8S::Kubernetes::Resource.define_object("JobTemplateSpec",
  namespace: "::K8S::Api::Batch::V1beta1",
  properties: [

    {name: "metadata", kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, key: "metadata", nilable: true, read_only: false, description: "Standard object's metadata of the jobs created from this template. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)"},
    {name: "spec", kind: ::K8S::Api::Batch::V1::JobSpec, key: "spec", nilable: true, read_only: false, description: "Specification of the desired behavior of the job. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)"},

  ]
)
