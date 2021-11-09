# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "LocalSubjectAccessReview", version: "v1beta1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/authorization.k8s.io/v1beta1/namespaces/{namespace}/localsubjectaccessreviews", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Authorization::V1beta1::LocalSubjectAccessReview
    getter api_version : String = "authorization/v1beta1"
    getter kind : String = "LocalSubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace you made the request against.  If empty, it is defaulted.
    property spec : Api::Authorization::V1beta1::SubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Api::Authorization::V1beta1::SubjectAccessReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authorization/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "LocalSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authorization/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "LocalSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authorization::V1beta1::SubjectAccessReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authorization::V1beta1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1beta1
    alias LocalSubjectAccessReview = ::K8S::Api::Authorization::V1beta1::LocalSubjectAccessReview
  end
end
