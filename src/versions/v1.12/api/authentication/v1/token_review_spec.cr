# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TokenReviewSpec",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "token", kind: String, key: "token", nilable: true, read_only: false, description: "Token is the opaque bearer token."},

  ]
)
