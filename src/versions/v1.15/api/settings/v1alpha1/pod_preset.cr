# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Settings::V1alpha1::PodPreset; end

require "../../../apimachinery/apis/meta/v1/object_meta"
require "./pod_preset_spec"

module K8S
  # Namespace holding the types for `Api::Settings::V1alpha1::PodPreset`.
  module Types::Api::Settings::V1alpha1::PodPreset
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)))
    abstract def api_version : String?
    # :ditto:
    abstract def api_version! : String
    # :ditto:
    abstract def api_version? : String?
    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)))
    abstract def kind : String?
    # :ditto:
    abstract def kind! : String
    # :ditto:
    abstract def kind? : String?
    # Standard object's metadata. More info: [[[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)))
    abstract def metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata! : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta
    # :ditto:
    abstract def metadata? : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta?
    # :ditto:
    abstract def metadata=(value : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta)
    #
    abstract def spec : ::K8S::Api::Settings::V1alpha1::PodPresetSpec?
    # :ditto:
    abstract def spec! : ::K8S::Api::Settings::V1alpha1::PodPresetSpec
    # :ditto:
    abstract def spec? : ::K8S::Api::Settings::V1alpha1::PodPresetSpec?
    # :ditto:
    abstract def spec=(value : ::K8S::Api::Settings::V1alpha1::PodPresetSpec)
  end

  # PodPreset is a policy resource that defines additional runtime requirements for a Pod.
  @[::K8S::GroupVersionKind(group: "settings.k8s.io", kind: "PodPreset", version: "v1alpha1", full: "io.k8s.api.settings.v1alpha1.PodPreset")]
  @[::K8S::Properties(
    api_version: {key: "apiVersion", accessor: "api_version", kind: "String", nilable: false, default: "settings/v1alpha1", read_only: true, description: "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    kind: {key: "kind", accessor: "kind", kind: "String", nilable: false, default: "PodPreset", read_only: true, description: "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    metadata: {key: "metadata", accessor: "metadata", kind: "::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta", nilable: true, default: nil, read_only: false, description: "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    spec: {key: "spec", accessor: "spec", kind: "::K8S::Api::Settings::V1alpha1::PodPresetSpec", nilable: true, default: nil, read_only: false, description: nil, x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Settings::V1alpha1::PodPreset < ::K8S::Kubernetes::Resource::Object
    include ::K8S::Types::Api::Settings::V1alpha1::PodPreset
    k8s_object_accessor("apiVersion", api_version : String = "settings/v1alpha1", false, true, "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources))")
    k8s_object_accessor("kind", kind : String = "PodPreset", false, true, "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds))")
    k8s_object_accessor("metadata", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta, true, false, "Standard object's metadata. More info: [[https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata))")
    k8s_object_accessor("spec", spec : ::K8S::Api::Settings::V1alpha1::PodPresetSpec, true, false, nil)

    def initialize(*, api_version : String? = "settings/v1alpha1", kind : String? = "PodPreset", metadata : ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta? = nil, spec : ::K8S::Api::Settings::V1alpha1::PodPresetSpec? = nil)
      super()
      raise "api_version cannot be nil" if api_version.nil?
      self.["apiVersion"] = api_version
      raise "kind cannot be nil" if kind.nil?
      self.["kind"] = kind
      self.["metadata"] = metadata
      self.["spec"] = spec
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "apiVersion", accessor: "api_version", nilable: false, read_only: true, default: "settings/v1alpha1", kind: String},
      {key: "kind", accessor: "kind", nilable: false, read_only: true, default: "PodPreset", kind: String},
      {key: "metadata", accessor: "metadata", nilable: true, read_only: false, default: nil, kind: ::K8S::Apimachinery::Apis::Meta::V1::ObjectMeta},
      {key: "spec", accessor: "spec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Settings::V1alpha1::PodPresetSpec},
    ])
  end

  module Resources::Settings::V1alpha1
    alias PodPreset = ::K8S::Api::Settings::V1alpha1::PodPreset
  end
end
