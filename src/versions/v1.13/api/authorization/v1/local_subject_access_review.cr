# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./subject_access_review_spec"
require "./subject_access_review_status"

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1", "LocalSubjectAccessReview",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Authorization::V1::SubjectAccessReviewSpec, key: "spec", nilable: false, read_only: false, description: "Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace you made the request against.  If empty, it is defaulted."},
    {name: "status", kind: ::K8S::Api::Authorization::V1::SubjectAccessReviewStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server and indicates whether the request is allowed or not"},

  ],
  description: "LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.",
)
