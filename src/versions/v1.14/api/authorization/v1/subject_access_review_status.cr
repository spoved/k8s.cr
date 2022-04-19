# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("SubjectAccessReviewStatus",
  namespace: "::K8S::Api::Authorization::V1",
  properties: [

    {name: "allowed", kind: ::Bool, key: "allowed", nilable: false, read_only: false, description: "Allowed is required. True if the action would be allowed, false otherwise."},
    {name: "denied", kind: ::Bool, key: "denied", nilable: true, read_only: false, description: "Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true."},
    {name: "evaluation_error", kind: String, key: "evaluationError", nilable: true, read_only: false, description: "EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request."},
    {name: "reason", kind: String, key: "reason", nilable: true, read_only: false, description: "Reason is optional.  It indicates why a request was allowed or denied."},

  ]
)
