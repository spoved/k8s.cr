# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means "in all namespaces".  Self is a special case, because users should always be able to check whether they can perform an action
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "SelfSubjectAccessReview", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/authorization.k8s.io/v1/selfsubjectaccessreviews", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  class Api::Authorization::V1::SelfSubjectAccessReview
    getter api_version : String = "authorization/v1"
    getter kind : String = "SelfSubjectAccessReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated.  user and groups must be empty
    property spec : Api::Authorization::V1::SelfSubjectAccessReviewSpec

    # Status is filled in by the server and indicates whether the request is allowed or not
    property status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authorization/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "SelfSubjectAccessReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authorization::V1::SelfSubjectAccessReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authorization::V1::SelfSubjectAccessReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authorization::V1::SubjectAccessReviewStatus | Nil = nil)
    end
  end

  module Resources::Authorization::V1
    alias SelfSubjectAccessReview = ::K8S::Api::Authorization::V1::SelfSubjectAccessReview
  end
end
