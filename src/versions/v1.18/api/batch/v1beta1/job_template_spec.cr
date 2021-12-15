# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # JobTemplateSpec describes the data a Job should have when created from a template
  @[::K8S::Properties(
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Batch::V1::JobSpec, nilable: true, key: "spec", getter: false, setter: false},
  )]
  class Api::Batch::V1beta1::JobTemplateSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Standard object's metadata of the jobs created from this template. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the job. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec", emit_null: false)]
    @[::YAML::Field(key: "spec", emit_null: false)]
    property spec : Api::Batch::V1::JobSpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Batch::V1::JobSpec | Nil = nil)
    end
  end
end
