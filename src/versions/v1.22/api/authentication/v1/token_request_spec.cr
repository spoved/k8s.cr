# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenRequestSpec; end

require "./bound_object_reference"

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenRequestSpec`.
  module Types::Api::Authentication::V1::TokenRequestSpec
    alias ValueType = ::Array(String) | ::K8S::Api::Authentication::V1::BoundObjectReference | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
    abstract def audiences : ::Array(String)
    # :ditto:
    abstract def audiences! : ::Array(String)
    # :ditto:
    abstract def audiences? : ::Array(String)?
    # :ditto:
    abstract def audiences=(value : ::Array(String))
    # BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
    abstract def bound_object_ref : ::K8S::Api::Authentication::V1::BoundObjectReference?
    # :ditto:
    abstract def bound_object_ref! : ::K8S::Api::Authentication::V1::BoundObjectReference
    # :ditto:
    abstract def bound_object_ref? : ::K8S::Api::Authentication::V1::BoundObjectReference?
    # :ditto:
    abstract def bound_object_ref=(value : ::K8S::Api::Authentication::V1::BoundObjectReference?)
    # ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
    abstract def expiration_seconds : Int32?
    # :ditto:
    abstract def expiration_seconds! : Int32
    # :ditto:
    abstract def expiration_seconds? : Int32?
    # :ditto:
    abstract def expiration_seconds=(value : Int32?)
  end

  # TokenRequestSpec contains client provided parameters of a token request.
  @[::K8S::Properties(
    audiences: {key: "audiences", accessor: "audiences", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    bound_object_ref: {key: "boundObjectRef", accessor: "bound_object_ref", kind: "::K8S::Api::Authentication::V1::BoundObjectReference", nilable: true, default: nil, read_only: false, description: "BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    expiration_seconds: {key: "expirationSeconds", accessor: "expiration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authentication::V1::TokenRequestSpec < ::K8S::Types::Api::Authentication::V1::TokenRequestSpec::Instance
    include ::K8S::Types::Api::Authentication::V1::TokenRequestSpec
    include ::K8S::Kubernetes::Object

    # Audiences are the intendend audiences of the token. A recipient of a token must identitfy themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
    def audiences : ::Array(String)
      self.["audiences"].as(::Array(String))
    end

    # :ditto:
    def audiences! : ::Array(String)
      self.["audiences"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def audiences? : ::Array(String)?
      self.["audiences"]?.as(::Array(String)?)
    end

    # :ditto:
    def audiences=(value : ::Array(String))
      self.["audiences"] = value
    end

    # BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
    def bound_object_ref : ::K8S::Api::Authentication::V1::BoundObjectReference?
      self.["boundObjectRef"].as(::K8S::Api::Authentication::V1::BoundObjectReference?)
    end

    # :ditto:
    def bound_object_ref! : ::K8S::Api::Authentication::V1::BoundObjectReference
      self.["boundObjectRef"].as(::K8S::Api::Authentication::V1::BoundObjectReference?).not_nil!
    end

    # :ditto:
    def bound_object_ref? : ::K8S::Api::Authentication::V1::BoundObjectReference?
      self.["boundObjectRef"]?.as(::K8S::Api::Authentication::V1::BoundObjectReference?)
    end

    # :ditto:
    def bound_object_ref=(value : ::K8S::Api::Authentication::V1::BoundObjectReference?)
      self.["boundObjectRef"] = value
    end

    # ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
    def expiration_seconds : Int32?
      self.["expirationSeconds"].as(Int32?)
    end

    # :ditto:
    def expiration_seconds! : Int32
      self.["expirationSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def expiration_seconds? : Int32?
      self.["expirationSeconds"]?.as(Int32?)
    end

    # :ditto:
    def expiration_seconds=(value : Int32?)
      self.["expirationSeconds"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "audiences", accessor: "audiences", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
        { key: "boundObjectRef", accessor: "bound_object_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Authentication::V1::BoundObjectReference },
        { key: "expirationSeconds", accessor: "expiration_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
