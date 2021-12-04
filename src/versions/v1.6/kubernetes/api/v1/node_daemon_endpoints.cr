# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  class Kubernetes::Api::V1::NodeDaemonEndpoints
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Endpoint on which Kubelet is listening.
    property kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint | Nil

    ::YAML.mapping({
      kubelet_endpoint: {type: Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: "kubeletEndpoint", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      kubelet_endpoint: {type: Kubernetes::Api::V1::DaemonEndpoint, nilable: true, key: "kubeletEndpoint", getter: false, setter: false},
    }, true)

    def initialize(*, @kubelet_endpoint : Kubernetes::Api::V1::DaemonEndpoint | Nil = nil)
    end
  end
end
