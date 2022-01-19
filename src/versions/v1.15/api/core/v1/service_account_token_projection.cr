# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ServiceAccountTokenProjection; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ServiceAccountTokenProjection`.
  module Types::Api::Core::V1::ServiceAccountTokenProjection
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
    abstract def audience : String?
    # :ditto:
    abstract def audience! : String
    # :ditto:
    abstract def audience? : String?
    # :ditto:
    abstract def audience=(value : String?)
    # ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
    abstract def expiration_seconds : Int32?
    # :ditto:
    abstract def expiration_seconds! : Int32
    # :ditto:
    abstract def expiration_seconds? : Int32?
    # :ditto:
    abstract def expiration_seconds=(value : Int32?)
    # Path is the path relative to the mount point of the file to project the token into.
    abstract def path : String
    # :ditto:
    abstract def path! : String
    # :ditto:
    abstract def path? : String?
    # :ditto:
    abstract def path=(value : String)
  end

  # ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
  @[::K8S::Properties(
    audience: {key: "audience", accessor: "audience", kind: "String", nilable: true, default: nil, read_only: false, description: "Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."},
    expiration_seconds: {key: "expirationSeconds", accessor: "expiration_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."},
    path: {key: "path", accessor: "path", kind: "String", nilable: false, default: nil, read_only: false, description: "Path is the path relative to the mount point of the file to project the token into."},
  )]
  class Api::Core::V1::ServiceAccountTokenProjection < ::K8S::Types::Api::Core::V1::ServiceAccountTokenProjection::Instance
    include ::K8S::Types::Api::Core::V1::ServiceAccountTokenProjection
    include ::K8S::Kubernetes::Object

    # Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
    def audience : String?
      self.["audience"].as(String?)
    end

    # :ditto:
    def audience! : String
      self.["audience"].as(String?).not_nil!
    end

    # :ditto:
    def audience? : String?
      self.["audience"]?.as(String?)
    end

    # :ditto:
    def audience=(value : String?)
      self.["audience"] = value
    end

    # ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
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

    # Path is the path relative to the mount point of the file to project the token into.
    def path : String
      self.["path"].as(String)
    end

    # :ditto:
    def path! : String
      self.["path"].as(String).not_nil!
    end

    # :ditto:
    def path? : String?
      self.["path"]?.as(String?)
    end

    # :ditto:
    def path=(value : String)
      self.["path"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "audience", accessor: "audience", nilable: true, read_only: false, default: nil, kind: String },
        { key: "expirationSeconds", accessor: "expiration_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "path", accessor: "path", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
