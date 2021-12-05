# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # TokenRequest requests a token for a given service account.
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "TokenRequest", version: "v1", full: "io.k8s.api.authentication.v1.TokenRequest")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Authentication::V1::TokenRequestSpec, nilable: false, key: "spec", getter: false, setter: false},
    status: {type: Api::Authentication::V1::TokenRequestStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/api/v1/namespaces/{namespace}/serviceaccounts/{name}/token", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  class Api::Authentication::V1::TokenRequest < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "authentication/v1"
    getter kind : String = "TokenRequest"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec holds information about the request being evaluated
    property spec : Api::Authentication::V1::TokenRequestSpec

    # Status is filled in by the server and indicates whether the token can be authenticated.
    property status : Api::Authentication::V1::TokenRequestStatus | Nil

    def initialize(*, @spec : Api::Authentication::V1::TokenRequestSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @status : Api::Authentication::V1::TokenRequestStatus | Nil = nil)
    end
  end

  module Resources::Authentication::V1
    alias TokenRequest = ::K8S::Api::Authentication::V1::TokenRequest
  end
end
