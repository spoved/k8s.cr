# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # MutatingWebhookConfiguration describes the configuration of and admission webhook that accept or reject and may change the object.
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "MutatingWebhookConfiguration", version: "v1beta1", full: "io.k8s.api.admissionregistration.v1beta1.MutatingWebhookConfiguration")]
  @[::K8S::Properties(
    api_version: {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
    kind: {type: String, nilable: true, key: "kind", getter: false, setter: false},
    metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    webhooks: {type: Array(Api::Admissionregistration::V1beta1::Webhook), nilable: true, key: "webhooks", getter: false, setter: false},
  )]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "continue", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "limit", type: Int32 | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "field_manager", type: String | Nil, default: nil},
           {name: "force", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "dry_run", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil}]
  )]
  class Api::Admissionregistration::V1beta1::MutatingWebhookConfiguration < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    getter api_version : String = "admissionregistration/v1beta1"
    getter kind : String = "MutatingWebhookConfiguration"
    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    @[::JSON::Field(key: "metadata", emit_null: false)]
    @[::YAML::Field(key: "metadata", emit_null: false)]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Webhooks is a list of webhooks and the affected resources and operations.
    @[::JSON::Field(key: "webhooks", emit_null: false)]
    @[::YAML::Field(key: "webhooks", emit_null: false)]
    property webhooks : Array(Api::Admissionregistration::V1beta1::Webhook) | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @webhooks : Array | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1beta1
    alias MutatingWebhookConfiguration = ::K8S::Api::Admissionregistration::V1beta1::MutatingWebhookConfiguration
  end
end
