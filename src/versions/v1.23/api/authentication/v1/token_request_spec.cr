# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./bound_object_reference"

::K8S::Kubernetes::Resource.define_object("TokenRequestSpec",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "audiences", kind: ::Array(String), key: "audiences", nilable: false, read_only: false, description: "Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences."},
    {name: "bound_object_ref", kind: ::K8S::Api::Authentication::V1::BoundObjectReference, key: "boundObjectRef", nilable: true, read_only: false, description: "BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation."},
    {name: "expiration_seconds", kind: Int32, key: "expirationSeconds", nilable: true, read_only: false, description: "ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response."},

  ]
)
