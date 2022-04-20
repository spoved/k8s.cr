# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./user_info"

::K8S::Kubernetes::Resource.define_object("TokenReviewStatus",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "authenticated", kind: ::Bool, key: "authenticated", nilable: true, read_only: false, description: "Authenticated indicates that the token was associated with a known user."},
    {name: "error", kind: String, key: "error", nilable: true, read_only: false, description: "Error indicates that the token couldn't be checked"},
    {name: "user", kind: ::K8S::Api::Authentication::V1::UserInfo, key: "user", nilable: true, read_only: false, description: "User is the UserInfo associated with the provided token."},

  ]
)
