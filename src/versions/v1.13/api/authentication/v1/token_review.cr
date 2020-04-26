# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenReview attempts to authenticate a token to a known user. Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "TokenReview", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/authentication.k8s.io/v1/tokenreviews", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil}]
  )]
  class Api::Authentication::V1::TokenReview
    getter api_version : String = "authentication/v1"
    getter kind : String = "TokenReview"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    property spec : Api::Authentication::V1::TokenReviewSpec

    # Status is filled in by the server and indicates whether the request can be authenticated.
    property status : Api::Authentication::V1::TokenReviewStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenReview", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenReviewSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenReviewStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authentication::V1::TokenReviewSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authentication::V1::TokenReviewStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenReview = ::K8S::Api::Authentication::V1::TokenReview
  end
end
