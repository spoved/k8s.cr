# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  @[::K8S::Properties(
    kubelet_endpoint: {type: Api::Core::V1::DaemonEndpoint, nilable: true, key: "kubeletEndpoint", getter: false, setter: false},
  )]
  class Api::Core::V1::NodeDaemonEndpoints
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Endpoint on which Kubelet is listening.
    @[::JSON::Field(key: "kubeletEndpoint", emit_null: false)]
    @[::YAML::Field(key: "kubeletEndpoint", emit_null: false)]
    property kubelet_endpoint : Api::Core::V1::DaemonEndpoint | Nil

    def initialize(*, @kubelet_endpoint : Api::Core::V1::DaemonEndpoint | Nil = nil)
    end
  end
end
