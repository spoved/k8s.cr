# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeConfigSource; end

require "./config_map_node_config_source"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeConfigSource`.
  module Types::Api::Core::V1::NodeConfigSource
    # ConfigMap is a reference to a Node's ConfigMap
    abstract def config_map : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource?
    # :ditto:
    abstract def config_map! : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource
    # :ditto:
    abstract def config_map? : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource?
    # :ditto:
    abstract def config_map=(value : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource)
  end

  # NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22
  @[::K8S::Properties(
    config_map: {key: "configMap", accessor: "config_map", kind: "::K8S::Api::Core::V1::ConfigMapNodeConfigSource", nilable: true, default: nil, read_only: false, description: "ConfigMap is a reference to a Node's ConfigMap", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::NodeConfigSource < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::NodeConfigSource
    k8s_object_accessor("configMap", config_map : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource, true, false, "ConfigMap is a reference to a Node's ConfigMap")

    def initialize(*, config_map : ::K8S::Api::Core::V1::ConfigMapNodeConfigSource? = nil)
      super()
      self.["configMap"] = config_map
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "configMap", accessor: "config_map", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ConfigMapNodeConfigSource},
    ])
  end
end
