# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Apimachinery::Apis::Meta::V1::WatchEvent; end

require "../../../runtime/raw_extension"

module K8S
  # Namespace holding the types for `Apimachinery::Apis::Meta::V1::WatchEvent`.
  module Types::Apimachinery::Apis::Meta::V1::WatchEvent
    alias ValueType = ::K8S::Apimachinery::Runtime::RawExtension | String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    abstract def object : ::K8S::Apimachinery::Runtime::RawExtension
    # :ditto:
    abstract def object! : ::K8S::Apimachinery::Runtime::RawExtension
    # :ditto:
    abstract def object? : ::K8S::Apimachinery::Runtime::RawExtension?
    # :ditto:
    abstract def object=(value : ::K8S::Apimachinery::Runtime::RawExtension)
    #
    abstract def type : String
    # :ditto:
    abstract def type! : String
    # :ditto:
    abstract def type? : String?
    # :ditto:
    abstract def type=(value : String)
  end

  # Event represents a single event to a watched resource.
  @[::K8S::GroupVersionKind(group: "", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "admission.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "admissionregistration.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apiextensions.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apiregistration.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "apps", kind: "WatchEvent", version: "v1beta2", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "authentication.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "authorization.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "autoscaling", kind: "WatchEvent", version: "v2beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "batch", kind: "WatchEvent", version: "v2alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "certificates.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "events.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "extensions", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "imagepolicy.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "networking.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "policy", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "rbac.authorization.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "scheduling.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "settings.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1alpha1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::GroupVersionKind(group: "storage.k8s.io", kind: "WatchEvent", version: "v1beta1", full: "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent")]
  @[::K8S::Properties(
    object: {key: "object", accessor: "object", kind: "::K8S::Apimachinery::Runtime::RawExtension", nilable: false, default: nil, read_only: false, description: "Object is:\n * If Type is Added or Modified: the new state of the object.\n * If Type is Deleted: the state of the object immediately before deletion.\n * If Type is Error: *Status is recommended; other types may make sense\n   depending on context.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    type: {key: "type", accessor: "type", kind: "String", nilable: false, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Apimachinery::Apis::Meta::V1::WatchEvent < ::K8S::Types::Apimachinery::Apis::Meta::V1::WatchEvent::Instance
    include ::K8S::Types::Apimachinery::Apis::Meta::V1::WatchEvent
    include ::K8S::Kubernetes::Object

    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    def object : ::K8S::Apimachinery::Runtime::RawExtension
      self.["object"].as(::K8S::Apimachinery::Runtime::RawExtension)
    end

    # :ditto:
    def object! : ::K8S::Apimachinery::Runtime::RawExtension
      self.["object"].as(::K8S::Apimachinery::Runtime::RawExtension).not_nil!
    end

    # :ditto:
    def object? : ::K8S::Apimachinery::Runtime::RawExtension?
      self.["object"]?.as(::K8S::Apimachinery::Runtime::RawExtension?)
    end

    # :ditto:
    def object=(value : ::K8S::Apimachinery::Runtime::RawExtension)
      self.["object"] = value
    end

    #
    def type : String
      self.["type"].as(String)
    end

    # :ditto:
    def type! : String
      self.["type"].as(String).not_nil!
    end

    # :ditto:
    def type? : String?
      self.["type"]?.as(String?)
    end

    # :ditto:
    def type=(value : String)
      self.["type"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "object", accessor: "object", nilable: false, read_only: false, default: nil, kind: ::K8S::Apimachinery::Runtime::RawExtension },
        { key: "type", accessor: "type", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
