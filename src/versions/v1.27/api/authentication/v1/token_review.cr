# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./token_review_spec"
require "./token_review_status"

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1", "TokenReview",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Authentication::V1::TokenReviewSpec, key: "spec", nilable: false, read_only: false, description: "Spec holds information about the request being evaluated"},
    {name: "status", kind: ::K8S::Api::Authentication::V1::TokenReviewStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server and indicates whether the request can be authenticated."},

  ],
  description: "TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.",
  versions: [{group: "authentication.k8s.io", kind: "TokenReview", version: "v1"}],
)
