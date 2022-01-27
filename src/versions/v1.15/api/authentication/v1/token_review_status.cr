# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenReviewStatus; end

require "./user_info"

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenReviewStatus`.
  module Types::Api::Authentication::V1::TokenReviewStatus
    # Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
    abstract def audiences : ::Array(String)?
    # :ditto:
    abstract def audiences! : ::Array(String)
    # :ditto:
    abstract def audiences? : ::Array(String)?
    # :ditto:
    abstract def audiences=(value : ::Array(String))
    # Authenticated indicates that the token was associated with a known user.
    abstract def authenticated : ::Bool?
    # :ditto:
    abstract def authenticated! : ::Bool
    # :ditto:
    abstract def authenticated? : ::Bool?
    # :ditto:
    abstract def authenticated=(value : ::Bool)
    # Error indicates that the token couldn't be checked
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String)
    # User is the UserInfo associated with the provided token.
    abstract def user : ::K8S::Api::Authentication::V1::UserInfo?
    # :ditto:
    abstract def user! : ::K8S::Api::Authentication::V1::UserInfo
    # :ditto:
    abstract def user? : ::K8S::Api::Authentication::V1::UserInfo?
    # :ditto:
    abstract def user=(value : ::K8S::Api::Authentication::V1::UserInfo)
  end

  # TokenReviewStatus is the result of the token authentication request.
  @[::K8S::Properties(
    audiences: {key: "audiences", accessor: "audiences", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    authenticated: {key: "authenticated", accessor: "authenticated", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Authenticated indicates that the token was associated with a known user.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Error indicates that the token couldn't be checked", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    user: {key: "user", accessor: "user", kind: "::K8S::Api::Authentication::V1::UserInfo", nilable: true, default: nil, read_only: false, description: "User is the UserInfo associated with the provided token.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authentication::V1::TokenReviewStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Authentication::V1::TokenReviewStatus
    k8s_object_accessor("audiences", audiences : ::Array(String), true, false, "Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.")
    k8s_object_accessor("authenticated", authenticated : ::Bool, true, false, "Authenticated indicates that the token was associated with a known user.")
    k8s_object_accessor("error", error : String, true, false, "Error indicates that the token couldn't be checked")
    k8s_object_accessor("user", user : ::K8S::Api::Authentication::V1::UserInfo, true, false, "User is the UserInfo associated with the provided token.")

    def initialize(*, audiences : ::Array(String)? = nil, authenticated : ::Bool? = nil, error : String? = nil, user : ::K8S::Api::Authentication::V1::UserInfo? = nil)
      super()
      self.["audiences"] = audiences
      self.["authenticated"] = authenticated
      self.["error"] = error
      self.["user"] = user
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "audiences", accessor: "audiences", nilable: true, read_only: false, default: nil, kind: ::Array(String)},
      {key: "authenticated", accessor: "authenticated", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String},
      {key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authentication::V1::UserInfo},
    ])
  end
end
