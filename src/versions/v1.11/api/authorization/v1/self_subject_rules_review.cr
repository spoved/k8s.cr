# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./self_subject_rules_review_spec"
require "./subject_rules_review_status"

::K8S::Kubernetes::Resource.define_resource("authorization.k8s.io", "v1", "SelfSubjectRulesReview",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Authorization::V1::SelfSubjectRulesReviewSpec, key: "spec", nilable: false, read_only: false, description: "Spec holds information about the request being evaluated."},
    {name: "status", kind: ::K8S::Api::Authorization::V1::SubjectRulesReviewStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server and indicates the set of actions a user can perform."},

  ],
  description: "SelfSubjectRulesReview enumerates the set of actions the current user can perform within a namespace. The returned list of actions may be incomplete depending on the server's authorization mode, and any errors experienced during the evaluation. SelfSubjectRulesReview should be used by UIs to show/hide actions, or to quickly let an end user reason about their permissions. It should NOT Be used by external systems to drive authorization decisions as this raises confused deputy, cache lifetime/revocation, and correctness concerns. SubjectAccessReview, and LocalAccessReview are the correct way to defer authorization decisions to the API server.",
)
