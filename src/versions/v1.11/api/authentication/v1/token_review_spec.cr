# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenReviewSpec; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenReviewSpec`.
  module Types::Api::Authentication::V1::TokenReviewSpec
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

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
    token: {key: "token", accessor: "token", kind: "String", nilable: true, default: nil, read_only: false, description: "Token is the opaque bearer token."},
  )]
  class Api::Authentication::V1::TokenReviewSpec < ::K8S::Types::Api::Authentication::V1::TokenReviewSpec::Instance
    include ::K8S::Types::Api::Authentication::V1::TokenReviewSpec
    include ::K8S::Kubernetes::Object

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
        { key: "token", accessor: "token", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
