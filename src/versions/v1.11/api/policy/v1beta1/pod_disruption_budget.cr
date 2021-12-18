# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
  @[::K8S::GroupVersionKind(group: "policy", kind: "PodDisruptionBudget", version: "v1beta1", full: "io.k8s.api.policy.v1beta1.PodDisruptionBudget")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    spec: {type: Api::Policy::V1beta1::PodDisruptionBudgetSpec, nilable: true, key: "spec", getter: false, setter: false},
    status: {type: Api::Policy::V1beta1::PodDisruptionBudgetStatus, nilable: true, key: "status", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "namespace", type: String, default: "default"}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/policy/v1beta1/namespaces/{namespace}/poddisruptionbudgets/{name}/status", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  class Api::Policy::V1beta1::PodDisruptionBudget < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "policy/v1beta1"
    getter kind : String = "PodDisruptionBudget"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta?
    # Specification of the desired behavior of the PodDisruptionBudget.
    @[::JSON::Field(key: "spec", emit_null: false)]
    @[::YAML::Field(key: "spec", emit_null: false)]
    property spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil

    # Most recently observed status of the PodDisruptionBudget.
    @[::JSON::Field(key: "status", emit_null: false)]
    @[::YAML::Field(key: "status", emit_null: false)]
    property status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Policy::V1beta1::PodDisruptionBudgetSpec | Nil = nil, @status : Api::Policy::V1beta1::PodDisruptionBudgetStatus | Nil = nil)
    end
  end

  module Resources::Policy::V1beta1
    alias PodDisruptionBudget = ::K8S::Api::Policy::V1beta1::PodDisruptionBudget
  end
end
