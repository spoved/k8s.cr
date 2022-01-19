# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::NodeDaemonEndpoints; end

require "./daemon_endpoint"

module K8S
  # Namespace holding the types for `Api::Core::V1::NodeDaemonEndpoints`.
  module Types::Api::Core::V1::NodeDaemonEndpoints
    alias ValueType = ::K8S::Api::Core::V1::DaemonEndpoint | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Endpoint on which Kubelet is listening.
    abstract def kubelet_endpoint : ::K8S::Api::Core::V1::DaemonEndpoint?
    # :ditto:
    abstract def kubelet_endpoint! : ::K8S::Api::Core::V1::DaemonEndpoint
    # :ditto:
    abstract def kubelet_endpoint? : ::K8S::Api::Core::V1::DaemonEndpoint?
    # :ditto:
    abstract def kubelet_endpoint=(value : ::K8S::Api::Core::V1::DaemonEndpoint?)
  end

  # NodeDaemonEndpoints lists ports opened by daemons running on the Node.
  @[::K8S::Properties(
    kubelet_endpoint: {key: "kubeletEndpoint", accessor: "kubelet_endpoint", kind: "::K8S::Api::Core::V1::DaemonEndpoint", nilable: true, default: nil, read_only: false, description: "Endpoint on which Kubelet is listening."},
  )]
  class Api::Core::V1::NodeDaemonEndpoints < ::K8S::Types::Api::Core::V1::NodeDaemonEndpoints::Instance
    include ::K8S::Types::Api::Core::V1::NodeDaemonEndpoints
    include ::K8S::Kubernetes::Object

    # Endpoint on which Kubelet is listening.
    def kubelet_endpoint : ::K8S::Api::Core::V1::DaemonEndpoint?
      self.["kubeletEndpoint"].as(::K8S::Api::Core::V1::DaemonEndpoint?)
    end

    # :ditto:
    def kubelet_endpoint! : ::K8S::Api::Core::V1::DaemonEndpoint
      self.["kubeletEndpoint"].as(::K8S::Api::Core::V1::DaemonEndpoint?).not_nil!
    end

    # :ditto:
    def kubelet_endpoint? : ::K8S::Api::Core::V1::DaemonEndpoint?
      self.["kubeletEndpoint"]?.as(::K8S::Api::Core::V1::DaemonEndpoint?)
    end

    # :ditto:
    def kubelet_endpoint=(value : ::K8S::Api::Core::V1::DaemonEndpoint?)
      self.["kubeletEndpoint"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "kubeletEndpoint", accessor: "kubelet_endpoint", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::DaemonEndpoint },
      ])
end
  end
end
