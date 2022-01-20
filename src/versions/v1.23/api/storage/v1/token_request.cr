# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Storage::V1::TokenRequest; end

module K8S
  # Namespace holding the types for `Api::Storage::V1::TokenRequest`.
  module Types::Api::Storage::V1::TokenRequest
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
    abstract def audience : String
    # :ditto:
    abstract def audience! : String
    # :ditto:
    abstract def audience? : String?
    # :ditto:
    abstract def audience=(value : String)
    # ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    abstract def expiration_seconds : Int32?
    # :ditto:
    abstract def expiration_seconds! : Int32
    # :ditto:
    abstract def expiration_seconds? : Int32?
    # :ditto:
    abstract def expiration_seconds=(value : Int32?)
  end

  # TokenRequest contains parameters of a service account token.
  @[::K8S::Properties(
    audience: {key: "audience", accessor: "audience", kind: "String", nilable: false, default: nil, read_only: false, description: "Audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    expiration_seconds: {key: "expirationSeconds", accessor: "expiration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ExpirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\".", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Storage::V1::TokenRequest < ::K8S::Types::Api::Storage::V1::TokenRequest::Instance
    include ::K8S::Types::Api::Storage::V1::TokenRequest
    include ::K8S::Kubernetes::Object

    # Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
    def audience : String
      self.["audience"].as(String)
    end

    # :ditto:
    def audience! : String
      self.["audience"].as(String).not_nil!
    end

    # :ditto:
    def audience? : String?
      self.["audience"]?.as(String?)
    end

    # :ditto:
    def audience=(value : String)
      self.["audience"] = value
    end

    # ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
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
        { key: "audience", accessor: "audience", nilable: false, read_only: false, default: nil, kind: String },
        { key: "expirationSeconds", accessor: "expiration_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
