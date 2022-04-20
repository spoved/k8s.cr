# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TokenReviewSpec",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "audiences", kind: ::Array(String), key: "audiences", nilable: true, read_only: false, description: "Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver."},
    {name: "token", kind: String, key: "token", nilable: true, read_only: false, description: "Token is the opaque bearer token."},

  ]
)
