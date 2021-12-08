# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SubjectAccessReviewStatus
  @[::K8S::Properties(
    allowed: {type: Bool, nilable: false, key: "allowed", getter: false, setter: false},
    denied: {type: Bool, nilable: true, key: "denied", getter: false, setter: false},
    evaluation_error: {type: String, nilable: true, key: "evaluationError", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
  )]
  class Api::Authorization::V1::SubjectAccessReviewStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Allowed is required. True if the action would be allowed, false otherwise.
    @[::JSON::Field(key: "allowed", emit_null: true)]
    @[::YAML::Field(key: "allowed", emit_null: true)]
    property allowed : Bool

    # Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
    @[::JSON::Field(key: "denied", emit_null: false)]
    @[::YAML::Field(key: "denied", emit_null: false)]
    property denied : Bool | Nil

    # EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
    @[::JSON::Field(key: "evaluationError", emit_null: false)]
    @[::YAML::Field(key: "evaluationError", emit_null: false)]
    property evaluation_error : String | Nil

    # Reason is optional.  It indicates why a request was allowed or denied.
    @[::JSON::Field(key: "reason", emit_null: false)]
    @[::YAML::Field(key: "reason", emit_null: false)]
    property reason : String | Nil

    def initialize(*, @allowed : Bool, @denied : Bool | Nil = nil, @evaluation_error : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
