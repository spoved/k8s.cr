# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: [https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration](https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration)
  @[::K8S::Properties(
    kubelet_config_key: {type: String, nilable: false, key: "kubeletConfigKey", getter: false, setter: false},
    name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
    resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
    uid: {type: String, nilable: true, key: "uid", getter: false, setter: false},
  )]
  class Api::Core::V1::ConfigMapNodeConfigSource
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    @[::JSON::Field(key: "kubeletConfigKey", emit_null: true)]
    @[::YAML::Field(key: "kubeletConfigKey", emit_null: true)]
    property kubelet_config_key : String

    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    @[::JSON::Field(key: "name", emit_null: true)]
    @[::YAML::Field(key: "name", emit_null: true)]
    property name : String

    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    @[::JSON::Field(key: "namespace", emit_null: true)]
    @[::YAML::Field(key: "namespace", emit_null: true)]
    property namespace : String

    # ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    @[::JSON::Field(key: "resourceVersion", emit_null: false)]
    @[::YAML::Field(key: "resourceVersion", emit_null: false)]
    property resource_version : String | Nil

    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    @[::JSON::Field(key: "uid", emit_null: false)]
    @[::YAML::Field(key: "uid", emit_null: false)]
    property uid : String | Nil

    def initialize(*, @kubelet_config_key : String, @name : String, @namespace : String, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
