# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authentication::V1::TokenRequestStatus; end

module K8S
  # Namespace holding the types for `Api::Authentication::V1::TokenRequestStatus`.
  module Types::Api::Authentication::V1::TokenRequestStatus
    alias ValueType = ::Time | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ExpirationTimestamp is the time of expiration of the returned token.
    abstract def expiration_timestamp : ::Time
    # :ditto:
    abstract def expiration_timestamp! : ::Time
    # :ditto:
    abstract def expiration_timestamp? : ::Time?
    # :ditto:
    abstract def expiration_timestamp=(value : ::Time)
    # Token is the opaque bearer token.
    abstract def token : String
    # :ditto:
    abstract def token! : String
    # :ditto:
    abstract def token? : String?
    # :ditto:
    abstract def token=(value : String)
  end

  # TokenRequestStatus is the result of a token request.
  @[::K8S::Properties(
    expiration_timestamp: {key: "expirationTimestamp", accessor: "expiration_timestamp", kind: "::Time", nilable: false, default: nil, read_only: false, description: "ExpirationTimestamp is the time of expiration of the returned token.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    token: {key: "token", accessor: "token", kind: "String", nilable: false, default: nil, read_only: false, description: "Token is the opaque bearer token.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authentication::V1::TokenRequestStatus < ::K8S::Types::Api::Authentication::V1::TokenRequestStatus::Instance
    include ::K8S::Types::Api::Authentication::V1::TokenRequestStatus
    include ::K8S::Kubernetes::Object

    # ExpirationTimestamp is the time of expiration of the returned token.
    def expiration_timestamp : ::Time
      self.["expirationTimestamp"].as(::Time)
    end

    # :ditto:
    def expiration_timestamp! : ::Time
      self.["expirationTimestamp"].as(::Time).not_nil!
    end

    # :ditto:
    def expiration_timestamp? : ::Time?
      self.["expirationTimestamp"]?.as(::Time?)
    end

    # :ditto:
    def expiration_timestamp=(value : ::Time)
      self.["expirationTimestamp"] = value
    end

    # Token is the opaque bearer token.
    def token : String
      self.["token"].as(String)
    end

    # :ditto:
    def token! : String
      self.["token"].as(String).not_nil!
    end

    # :ditto:
    def token? : String?
      self.["token"]?.as(String?)
    end

    # :ditto:
    def token=(value : String)
      self.["token"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "expirationTimestamp", accessor: "expiration_timestamp", nilable: false, read_only: false, default: nil, kind: ::Time },
        { key: "token", accessor: "token", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
