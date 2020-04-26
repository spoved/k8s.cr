# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Event represents a single event to a watched resource.
  @[::K8S::GroupVersionKind(group: "", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "admission.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1beta2")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "WatchEvent", version: "v2beta1")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v2alpha1")]
  @[::K8S::GroupVersionKind(group: "certificates.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "extensions", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "imagepolicy.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "networking.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "policy", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  @[::K8S::GroupVersionKind(group: "settings.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1alpha1")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1beta1")]
  class Apimachinery::Apis::Meta::V1::WatchEvent
    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    property object : Apimachinery::Runtime::RawExtension

    property type : String

    ::YAML.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object", getter: false, setter: false},
      type:   {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object", getter: false, setter: false},
      type:   {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @object : Apimachinery::Runtime::RawExtension, @type : String)
    end
  end
end
