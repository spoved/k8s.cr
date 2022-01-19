# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenReviewSpec; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenReviewSpec`.
  module Types::Api::Authentication::V1::TokenReviewSpec
    alias ValueType = ::Array(String) | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
    abstract def audiences : ::Array(String)?
    # :ditto:
    abstract def audiences! : ::Array(String)
    # :ditto:
    abstract def audiences? : ::Array(String)?
    # :ditto:
    abstract def audiences=(value : ::Array(String)?)
    # Token is the opaque bearer token.
    abstract def token : String?
    # :ditto:
    abstract def token! : String
    # :ditto:
    abstract def token? : String?
    # :ditto:
    abstract def token=(value : String?)
  end

  # TokenReviewSpec is a description of the token authentication request.
  @[::K8S::Properties(
    audiences: {key: "audiences", accessor: "audiences", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver."},
    token: {key: "token", accessor: "token", kind: "String", nilable: true, default: nil, read_only: false, description: "Token is the opaque bearer token."},
  )]
  class Api::Authentication::V1::TokenReviewSpec < ::K8S::Types::Api::Authentication::V1::TokenReviewSpec::Instance
    include ::K8S::Types::Api::Authentication::V1::TokenReviewSpec
    include ::K8S::Kubernetes::Object

    # Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
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

    # Token is the opaque bearer token.
    def token : String?
      self.["token"].as(String?)
    end

    # :ditto:
    def token! : String
      self.["token"].as(String?).not_nil!
    end

    # :ditto:
    def token? : String?
      self.["token"]?.as(String?)
    end

    # :ditto:
    def token=(value : String?)
      self.["token"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "audiences", accessor: "audiences", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "token", accessor: "token", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
