# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Authorization::V1::SubjectAccessReviewStatus; end

module K8S
  # Namespace holding the types for `Api::Authorization::V1::SubjectAccessReviewStatus`.
  module Types::Api::Authorization::V1::SubjectAccessReviewStatus
    # Allowed is required. True if the action would be allowed, false otherwise.
    abstract def allowed : ::Bool?
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
    abstract def denied=(value : ::Bool)
    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    abstract def evaluation_error : String?
    # :ditto:
    abstract def evaluation_error! : String
    # :ditto:
    abstract def evaluation_error? : String?
    # :ditto:
    abstract def evaluation_error=(value : String)
    # Reason is optional.  It indicates why a request was allowed or denied.
    abstract def reason : String?
    # :ditto:
    abstract def reason! : String
    # :ditto:
    abstract def reason? : String?
    # :ditto:
    abstract def reason=(value : String)
  end

  # SubjectAccessReviewStatus
  @[::K8S::Properties(
    allowed: {key: "allowed", accessor: "allowed", kind: "::Bool", nilable: false, default: nil, read_only: false, description: "Allowed is required. True if the action would be allowed, false otherwise.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    denied: {key: "denied", accessor: "denied", kind: "::Bool", nilable: true, default: nil, read_only: false, description: "Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    evaluation_error: {key: "evaluationError", accessor: "evaluation_error", kind: "String", nilable: true, default: nil, read_only: false, description: "EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    reason: {key: "reason", accessor: "reason", kind: "String", nilable: true, default: nil, read_only: false, description: "Reason is optional.  It indicates why a request was allowed or denied.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Authorization::V1::SubjectAccessReviewStatus < ::K8S::GenericObject
    include ::K8S::Types::Api::Authorization::V1::SubjectAccessReviewStatus
    k8s_object_accessor("allowed", allowed : ::Bool, false, false, "Allowed is required. True if the action would be allowed, false otherwise.")
    k8s_object_accessor("denied", denied : ::Bool, true, false, "Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.")
    k8s_object_accessor("evaluationError", evaluation_error : String, true, false, "EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.")
    k8s_object_accessor("reason", reason : String, true, false, "Reason is optional.  It indicates why a request was allowed or denied.")

    def initialize(*, allowed : ::Bool? = nil, denied : ::Bool? = nil, evaluation_error : String? = nil, reason : String? = nil)
      super()
      self.["allowed"] = allowed
      self.["denied"] = denied
      self.["evaluationError"] = evaluation_error
      self.["reason"] = reason
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "allowed", accessor: "allowed", nilable: false, read_only: false, default: nil, kind: ::Bool},
      {key: "denied", accessor: "denied", nilable: true, read_only: false, default: nil, kind: ::Bool},
      {key: "evaluationError", accessor: "evaluation_error", nilable: true, read_only: false, default: nil, kind: String},
      {key: "reason", accessor: "reason", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
