# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./token_request_spec"
require "./token_request_status"

::K8S::Kubernetes::Resource.define_resource("authentication.k8s.io", "v1", "TokenRequest",
  namespace: "::K8S::Api::Authentication::V1",
  properties: [

    {name: "spec", kind: ::K8S::Api::Authentication::V1::TokenRequestSpec, key: "spec", nilable: false, read_only: false, description: "Spec holds information about the request being evaluated"},
    {name: "status", kind: ::K8S::Api::Authentication::V1::TokenRequestStatus, key: "status", nilable: true, read_only: false, description: "Status is filled in by the server and indicates whether the token can be authenticated."},

  ],
  description: "TokenRequest requests a token for a given service account.",
  versions: [{group: "authentication.k8s.io", kind: "TokenRequest", version: "v1"}],
)
