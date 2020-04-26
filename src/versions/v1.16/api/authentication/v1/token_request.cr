# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenRequest requests a token for a given service account.
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "TokenRequest", version: "v1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/serviceaccounts/{name}/token", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  class Api::Authentication::V1::TokenRequest
    getter api_version : String = "authentication/v1"
    getter kind : String = "TokenRequest"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    property spec : Api::Authentication::V1::TokenRequestSpec

    property status : Api::Authentication::V1::TokenRequestStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "authentication/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "TokenRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Authentication::V1::TokenRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
      status:      {type: Api::Authentication::V1::TokenRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Authentication::V1::TokenRequestSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authentication::V1::TokenRequestStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenRequest = ::K8S::Api::Authentication::V1::TokenRequest
  end
end
