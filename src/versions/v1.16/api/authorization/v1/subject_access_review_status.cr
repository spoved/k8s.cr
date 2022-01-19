# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SubjectAccessReviewStatus; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SubjectAccessReviewStatus`.
  module Types::Api::Authorization::V1::SubjectAccessReviewStatus
    alias ValueType = ::Bool | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Allowed is required. True if the action would be allowed, false otherwise.
    abstract def allowed : ::Bool
    # :ditto:
    abstract def allowed! : ::Bool
    # :ditto:
    abstract def allowed? : ::Bool?
    # :ditto:
    abstract def allowed=(value : ::Bool)
    # Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
    abstract def denied : ::Bool?
    # :ditto:
    abstract def denied! : ::Bool
    # :ditto:
    abstract def denied? : ::Bool?
    # :ditto:
    abstract def denied=(value : ::Bool?)
    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    abstract def evaluation_error : String?
    # :ditto:
    abstract def evaluation_error! : String
    # :ditto:
    abstract def evaluation_error? : String?
    # :ditto:
    abstract def evaluation_error=(value : String?)
    # Reason is optional.  It indicates why a request was allowed or denied.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String?)
  end

  # SubjectAccessReviewStatus
  @[::K8S::Properties(
    allowed: {key: "allowed", accessor: "allowed", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Allowed is required. True if the action would be allowed, false otherwise."},
    denied: {key: "denied", accessor: "denied", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true."},
    evaluation_error: {key: "evaluationError", accessor: "evaluation_error", kind: "String", nilable: true, default: nil, read_only: false, description: "EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request."},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Reason is optional.  It indicates why a request was allowed or denied."},
  )]
  class Api::Authorization::V1::SubjectAccessReviewStatus < ::K8S::Types::Api::Authorization::V1::SubjectAccessReviewStatus::Instance
    include ::K8S::Types::Api::Authorization::V1::SubjectAccessReviewStatus
    include ::K8S::Kubernetes::Object

    # Allowed is required. True if the action would be allowed, false otherwise.
    def allowed : ::Bool
      self.["allowed"].as(::Bool)
    end

    # :ditto:
    def allowed! : ::Bool
      self.["allowed"].as(::Bool).not_nil!
    end

    # :ditto:
    def allowed? : ::Bool?
      self.["allowed"]?.as(::Bool?)
    end

    # :ditto:
    def allowed=(value : ::Bool)
      self.["allowed"] = value
    end

    # Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
    def denied : ::Bool?
      self.["denied"].as(::Bool?)
    end

    # :ditto:
    def denied! : ::Bool
      self.["denied"].as(::Bool?).not_nil!
    end

    # :ditto:
    def denied? : ::Bool?
      self.["denied"]?.as(::Bool?)
    end

    # :ditto:
    def denied=(value : ::Bool?)
      self.["denied"] = value
    end

    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    def evaluation_error : String?
      self.["evaluationError"].as(String?)
    end

    # :ditto:
    def evaluation_error! : String
      self.["evaluationError"].as(String?).not_nil!
    end

    # :ditto:
    def evaluation_error? : String?
      self.["evaluationError"]?.as(String?)
    end

    # :ditto:
    def evaluation_error=(value : String?)
      self.["evaluationError"] = value
    end

    # Reason is optional.  It indicates why a request was allowed or denied.
    def reason : String?
      self.["reason"].as(String?)
    end

    # :ditto:
    def reason! : String
      self.["reason"].as(String?).not_nil!
    end

    # :ditto:
    def reason? : String?
      self.["reason"]?.as(String?)
    end

    # :ditto:
    def reason=(value : String?)
      self.["reason"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "allowed", accessor: "allowed", nilable: false, read_only: false, default: nil, kind: ::Bool },
        { key: "denied", accessor: "denied", nilable: true, read_only: false, default: nil, kind: ::Bool },
        { key: "evaluationError", accessor: "evaluation_error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
