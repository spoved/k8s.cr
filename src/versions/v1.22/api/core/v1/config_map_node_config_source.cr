# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ConfigMapNodeConfigSource; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ConfigMapNodeConfigSource`.
  module Types::Api::Core::V1::ConfigMapNodeConfigSource
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    abstract def kubelet_config_key : String
    # :ditto:
    abstract def kubelet_config_key! : String
    # :ditto:
    abstract def kubelet_config_key? : String?
    # :ditto:
    abstract def kubelet_config_key=(value : String)
    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    abstract def name : String
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String)
    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    abstract def namespace : String
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
    abstract def resource_version=(value : String?)
    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    abstract def uid : String?
    # :ditto:
    abstract def uid! : String
    # :ditto:
    abstract def uid? : String?
    # :ditto:
    abstract def uid=(value : String?)
  end

  # ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: [https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration](https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration)
  @[::K8S::Properties(
    kubelet_config_key: {key: "kubeletConfigKey", accessor: "kubelet_config_key", kind: "String", nilable: false, default: nil, read_only: false, description: "KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases."},
    name: {key: "name", accessor: "name", kind: "String", nilable: false, default: nil, read_only: false, description: "Name is the metadata.name of the referenced ConfigMap. This field is required in all cases."},
    namespace: {key: "namespace", accessor: "namespace", kind: "String", nilable: false, default: nil, read_only: false, description: "Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases."},
    resource_version: {key: "resourceVersion", accessor: "resource_version", kind: "String", nilable: true, default: nil, read_only: false, description: "ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status."},
    uid: {key: "uid", accessor: "uid", kind: "String", nilable: true, default: nil, read_only: false, description: "UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status."},
  )]
  class Api::Core::V1::ConfigMapNodeConfigSource < ::K8S::Types::Api::Core::V1::ConfigMapNodeConfigSource::Instance
    include ::K8S::Types::Api::Core::V1::ConfigMapNodeConfigSource
    include ::K8S::Kubernetes::Object

    # KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
    def kubelet_config_key : String
      self.["kubeletConfigKey"].as(String)
    end

    # :ditto:
    def kubelet_config_key! : String
      self.["kubeletConfigKey"].as(String).not_nil!
    end

    # :ditto:
    def kubelet_config_key? : String?
      self.["kubeletConfigKey"]?.as(String?)
    end

    # :ditto:
    def kubelet_config_key=(value : String)
      self.["kubeletConfigKey"] = value
    end

    # Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
    def name : String
      self.["name"].as(String)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String)
      self.["name"] = value
    end

    # Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
    def namespace : String
      self.["namespace"].as(String)
    end

    # :ditto:
    def namespace! : String
      self.["namespace"].as(String).not_nil!
    end

    # :ditto:
    def namespace? : String?
      self.["namespace"]?.as(String?)
    end

    # :ditto:
    def namespace=(value : String)
      self.["namespace"] = value
    end

    # ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    def resource_version : String?
      self.["resourceVersion"].as(String?)
    end

    # :ditto:
    def resource_version! : String
      self.["resourceVersion"].as(String?).not_nil!
    end

    # :ditto:
    def resource_version? : String?
      self.["resourceVersion"]?.as(String?)
    end

    # :ditto:
    def resource_version=(value : String?)
      self.["resourceVersion"] = value
    end

    # UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
    def uid : String?
      self.["uid"].as(String?)
    end

    # :ditto:
    def uid! : String
      self.["uid"].as(String?).not_nil!
    end

    # :ditto:
    def uid? : String?
      self.["uid"]?.as(String?)
    end

    # :ditto:
    def uid=(value : String?)
      self.["uid"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "kubeletConfigKey", accessor: "kubelet_config_key", nilable: false, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: false, read_only: false, default: nil, kind: String },
        { key: "namespace", accessor: "namespace", nilable: false, read_only: false, default: nil, kind: String },
        { key: "resourceVersion", accessor: "resource_version", nilable: true, read_only: false, default: nil, kind: String },
        { key: "uid", accessor: "uid", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
