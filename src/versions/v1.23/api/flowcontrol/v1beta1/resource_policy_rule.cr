# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
  @[::K8S::Properties(
    api_groups: {type: Array(String), nilable: false, key: "apiGroups", getter: false, setter: false},
    cluster_scope: {type: Bool, nilable: true, key: "clusterScope", getter: false, setter: false},
    namespaces: {type: Array(String), nilable: true, key: "namespaces", getter: false, setter: false},
    resources: {type: Array(String), nilable: false, key: "resources", getter: false, setter: false},
    verbs: {type: Array(String), nilable: false, key: "verbs", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1beta1::ResourcePolicyRule
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `apiGroups` is a list of matching API groups and may not be empty. "*" matches all API groups and, if present, must be the only entry. Required.
    @[::JSON::Field(key: "apiGroups", emit_null: true)]
    @[::YAML::Field(key: "apiGroups", emit_null: true)]
    property api_groups : Array(String)

    # `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
    @[::JSON::Field(key: "clusterScope", emit_null: false)]
    @[::YAML::Field(key: "clusterScope", emit_null: false)]
    property cluster_scope : Bool | Nil

    # `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains "*".  Note that "*" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
    @[::JSON::Field(key: "namespaces", emit_null: false)]
    @[::YAML::Field(key: "namespaces", emit_null: false)]
    property namespaces : Array(String) | Nil

    # `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ "services", ["nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.]("nodes/status" ].  This list may not be empty. "*" matches all resources and, if present, must be the only entry. Required.)
    @[::JSON::Field(key: "resources", emit_null: true)]
    @[::YAML::Field(key: "resources", emit_null: true)]
    property resources : Array(String)

    # `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if present, must be the only entry. Required.
    @[::JSON::Field(key: "verbs", emit_null: true)]
    @[::YAML::Field(key: "verbs", emit_null: true)]
    property verbs : Array(String)

    def initialize(*, @api_groups : Array(String), @resources : Array(String), @verbs : Array(String), @cluster_scope : Bool | Nil = nil, @namespaces : Array(String) | Nil = nil)
    end
  end
end
