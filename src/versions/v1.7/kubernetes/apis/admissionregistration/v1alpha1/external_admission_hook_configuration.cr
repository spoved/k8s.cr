# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ExternalAdmissionHookConfiguration describes the configuration of initializers.
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "ExternalAdmissionHookConfiguration", version: "v1alpha1")]
  @[::K8S::Action(name: "post", verb: "post",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "list", verb: "get",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "deletecollection", verb: "delete",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations", toplevel: true,
    args: [{name: "context", type: String | Nil, default: nil},
           {name: "field_selector", type: String | Nil, default: nil},
           {name: "include_uninitialized", type: Bool | Nil, default: nil},
           {name: "label_selector", type: String | Nil, default: nil},
           {name: "resource_version", type: String | Nil, default: nil},
           {name: "timeout_seconds", type: Int32 | Nil, default: nil},
           {name: "watch", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "get", verb: "get",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/{name}", toplevel: true,
    args: [{name: "name", type: String},
           {name: "context", type: String | Nil, default: nil},
           {name: "exact", type: Bool | Nil, default: nil},
           {name: "export", type: Bool | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "put", verb: "put",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "patch", verb: "path",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/{name}", toplevel: false,
    args: [{name: "context", type: String | Nil, default: nil}]
  )]
  @[::K8S::Action(name: "delete", verb: "delete",
    path: "/apis/admissionregistration.k8s.io/v1alpha1/externaladmissionhookconfigurations/{name}", toplevel: false,
    args: [{name: "api_version", type: String | Nil, default: nil},
           {name: "grace_period_seconds", type: Int32 | Nil, default: nil},
           {name: "kind", type: String | Nil, default: nil},
           {name: "orphan_dependents", type: Bool | Nil, default: nil},
           {name: "preconditions", type: Apimachinery::Apis::Meta::V1::Preconditions | Nil, default: nil},
           {name: "propagation_policy", type: String | Nil, default: nil},
           {name: "context", type: String | Nil, default: nil}]
  )]
  class Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration < ::K8S::Kubernetes::Resource
    include ::K8S::Kubernetes::Resource::Object
    include ::JSON::Serializable
    include ::YAML::Serializable

    getter api_version : String = "admissionregistration/v1alpha1"
    getter kind : String = "ExternalAdmissionHookConfiguration"
    # ExternalAdmissionHooks is a list of external admission webhooks and the affected resources and operations.
    property external_admission_hooks : Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook) | Nil

    # Standard object metadata; More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata.)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    ::YAML.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:              {type: String, default: "admissionregistration/v1alpha1", key: "apiVersion", setter: false},
      kind:                     {type: String, default: "ExternalAdmissionHookConfiguration", key: "kind", setter: false},
      external_admission_hooks: {type: Array(Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHook), nilable: true, key: "externalAdmissionHooks", getter: false, setter: false},
      metadata:                 {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @external_admission_hooks : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Admissionregistration::V1alpha1
    alias ExternalAdmissionHookConfiguration = ::K8S::Kubernetes::Apis::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration
  end
end
