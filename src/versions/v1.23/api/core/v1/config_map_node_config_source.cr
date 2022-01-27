# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ConfigMapNodeConfigSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ConfigMapNodeConfigSource`.
  module Types::Api::Core::V1::ConfigMapNodeConfigSource
    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    abstract def kubelet_config_key : String?
    # :ditto:
    abstract def kubelet_config_key! : String
    # :ditto:
    abstract def kubelet_config_key? : String?
    # :ditto:
    abstract def kubelet_config_key=(value : String)
    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    abstract def namespace : String?
    # :ditto:
    abstract def namespace! : String
    # :ditto:
    abstract def namespace? : String?
    # :ditto:
    abstract def namespace=(value : String)
    # ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    abstract def resource_version : String?
    # :ditto:
    abstract def resource_version! : String
    # :ditto:
    abstract def resource_version? : String?
    # :ditto:
    abstract def resource_version=(value : String)
    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String)
  end

  # ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: [https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration](https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration)
  @[::K8S::Properties(
    kubelet_config_key: {key: "kubeletConfigKey", accessor: "kubelet_config_key", kind: "String", nilable: false, default: nil, read_only: false, description: "KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: false, default: nil, read_only: false, description: "Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ConfigMapNodeConfigSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::ConfigMapNodeConfigSource
    k8s_object_accessor("kubeletConfigKey", kubelet_config_key : String, false, false, "KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.")
    k8s_object_accessor("name", name : String, false, false, "Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.")
    k8s_object_accessor("namespace", namespace : String, false, false, "Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.")
    k8s_object_accessor("resourceVersion", resource_version : String, true, false, "ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.")
    k8s_object_accessor("uid", uid : String, true, false, "UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.")

    def initialize(*, kubelet_config_key : String? = nil, name : String? = nil, namespace : String? = nil, resource_version : String? = nil, uid : String? = nil)
      super()
      self.["kubeletConfigKey"] = kubelet_config_key
      self.["name"] = name
      self.["namespace"] = namespace
      self.["resourceVersion"] = resource_version
      self.["uid"] = uid
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "kubeletConfigKey", accessor: "kubelet_config_key", nilable: false, read_only: false, default: nil, kind: String},
      {key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String},
      {key: "namespace", accessor: "namespace", nilable: false, read_only: false, default: nil, kind: String},
      {key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String},
      {key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
