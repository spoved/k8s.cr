# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("TokenRequestStatus",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "expiration_timestamp", kind: ::Time, key: "expirationTimestamp", nilable: false, read_only: false, description: "ExpirationTimestamp is the time of expiration of the returned token."},
    {name: "token", kind: String, key: "token", nilable: false, read_only: false, description: "Token is the opaque bearer token."},

  ]
)
