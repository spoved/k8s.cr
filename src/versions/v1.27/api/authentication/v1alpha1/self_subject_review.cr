# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./self_subject_review_status"

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1alpha1", "SelfSubjectReview",
  namespace: "::K8S::Api::Authentication::V1alpha1",
  properties: [

    {name: "status", kind: ::K8S::Api::Authentication::V1alpha1::SelfSubjectReviewStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server with the user attributes."},

  ],
  description: "SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request. When using impersonation, users will receive the user info of the user being impersonated.  If impersonation or request header authentication is used, any extra keys will have their case ignored and returned as lowercase.",
  versions: [{group: "authentication.k8s.io", kind: "SelfSubjectReview", version: "v1alpha1"}],
)
