# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./self_subject_access_review_spec"
require "./subject_access_review_status"

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1", "SelfSubjectAccessReview",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Authorization::V1::SelfSubjectAccessReviewSpec, key: "spec", nilable: false, read_only: false, description: "Spec holds information about the request being evaluated.  user and groups must be empty"},
    {name: "status", kind: ::K8S::Api::Authorization::V1::SubjectAccessReviewStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server and indicates whether the request is allowed or not"},

  ],
  description: "SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a spec.namespace means \"in all namespaces\".  Self is a special case, because users should always be able to check whether they can perform an action",
  versions: [{group: "authorization.k8s.io", kind: "SelfSubjectAccessReview", version: "v1"}],
)
