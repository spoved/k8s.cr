# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./user_info"

::K8S::Kubernetes::Resource.define_object("TokenReviewStatus",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "audiences", kind: ::Array(String), key: "audiences", nilable: true, read_only: false, description: "Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server."},
    {name: "authenticated", kind: ::Bool, key: "authenticated", nilable: true, read_only: false, description: "Authenticated indicates that the token was associated with a known user."},
    {name: "error", kind: String, key: "error", nilable: true, read_only: false, description: "Error indicates that the token couldn't be checked"},
    {name: "user", kind: ::K8S::Api::Authentication::V1::UserInfo, key: "user", nilable: true, read_only: false, description: "User is the UserInfo associated with the provided token."},

  ]
)
