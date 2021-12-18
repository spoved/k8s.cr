# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SubjectAccessReview checks whether or not a user or group can perform an action.
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "SubjectAccessReview", version: "v1", full: "io.k8s.api.authorization.v1.SubjectAccessReview")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
    status: {type: Api::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/authorization.k8s.io/v1/subjectaccessreviews", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Authorization::V1::SubjectAccessReview < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "authorization/v1"
    getter kind : String = "SubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?
    # Spec holds information about the request being evaluated
    @[::JSON::Field(key: "spec", emit_null: true)]
    @[::YAML::Field(key: "spec", emit_null: true)]
    property spec : Api::Authorization::V1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil

    def initialize(*, @spec : Api::Authorization::V1::SubjectAccessReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias SubjectAccessReview = ::K8S::Api::Authorization::V1::SubjectAccessReview
  end
end
