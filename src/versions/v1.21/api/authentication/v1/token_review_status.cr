# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenReviewStatus; end

require "./user_info"

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenReviewStatus`.
  module Types::Api::Authentication::V1::TokenReviewStatus
    alias ValueType = ::Array(String) | ::Bool | String | ::K8S::Api::Authentication::V1::UserInfo | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
    abstract def audiences : ::Array(String)?
    # :ditto:
    abstract def audiences! : ::Array(String)
    # :ditto:
    abstract def audiences? : ::Array(String)?
    # :ditto:
    abstract def audiences=(value : ::Array(String)?)
    # Authenticated indicates that the token was associated with a known user.
    abstract def authenticated : ::Bool?
    # :ditto:
    abstract def authenticated! : ::Bool
    # :ditto:
    abstract def authenticated? : ::Bool?
    # :ditto:
    abstract def authenticated=(value : ::Bool?)
    # Error indicates that the token couldn't be checked
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String?)
    # User is the UserInfo associated with the provided token.
    abstract def user : ::K8S::Api::Authentication::V1::UserInfo?
    # :ditto:
    abstract def user! : ::K8S::Api::Authentication::V1::UserInfo
    # :ditto:
    abstract def user? : ::K8S::Api::Authentication::V1::UserInfo?
    # :ditto:
    abstract def user=(value : ::K8S::Api::Authentication::V1::UserInfo?)
  end

  # TokenReviewStatus is the result of the token authentication request.
  @[::K8S::Properties(
    audiences: {key: "audiences", accessor: "audiences", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server."},
    authenticated: {key: "authenticated", accessor: "authenticated", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Authenticated indicates that the token was associated with a known user."},
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Error indicates that the token couldn't be checked"},
    user: {key: "user", accessor: "user", kind: "::K8S::Api::Authentication::V1::UserInfo", nilable: true, default: nil, read_only: false, description: "User is the UserInfo associated with the provided token."},
  )]
  class Api::Authentication::V1::TokenReviewStatus < ::K8S::Types::Api::Authentication::V1::TokenReviewStatus::Instance
    include ::K8S::Types::Api::Authentication::V1::TokenReviewStatus
    include ::K8S::Kubernetes::Object

    # Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
    def audiences : ::Array(String)?
      self.["audiences"].as(::Array(String)?)
    end

    # :ditto:
    def audiences! : ::Array(String)
      self.["audiences"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def audiences? : ::Array(String)?
      self.["audiences"]?.as(::Array(String)?)
    end

    # :ditto:
    def audiences=(value : ::Array(String)?)
      self.["audiences"] = value
    end

    # Authenticated indicates that the token was associated with a known user.
    def authenticated : ::Bool?
      self.["authenticated"].as(::Bool?)
    end

    # :ditto:
    def authenticated! : ::Bool
      self.["authenticated"].as(::Bool?).not_nil!
    end

    # :ditto:
    def authenticated? : ::Bool?
      self.["authenticated"]?.as(::Bool?)
    end

    # :ditto:
    def authenticated=(value : ::Bool?)
      self.["authenticated"] = value
    end

    # Error indicates that the token couldn't be checked
    def error : String?
      self.["error"].as(String?)
    end

    # :ditto:
    def error! : String
      self.["error"].as(String?).not_nil!
    end

    # :ditto:
    def error? : String?
      self.["error"]?.as(String?)
    end

    # :ditto:
    def error=(value : String?)
      self.["error"] = value
    end

    # User is the UserInfo associated with the provided token.
    def user : ::K8S::Api::Authentication::V1::UserInfo?
      self.["user"].as(::K8S::Api::Authentication::V1::UserInfo?)
    end

    # :ditto:
    def user! : ::K8S::Api::Authentication::V1::UserInfo
      self.["user"].as(::K8S::Api::Authentication::V1::UserInfo?).not_nil!
    end

    # :ditto:
    def user? : ::K8S::Api::Authentication::V1::UserInfo?
      self.["user"]?.as(::K8S::Api::Authentication::V1::UserInfo?)
    end

    # :ditto:
    def user=(value : ::K8S::Api::Authentication::V1::UserInfo?)
      self.["user"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "audiences", accessor: "audiences", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "authenticated", accessor: "authenticated", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "user", accessor: "user", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authentication::V1::UserInfo },
      ])
end
  end
end
