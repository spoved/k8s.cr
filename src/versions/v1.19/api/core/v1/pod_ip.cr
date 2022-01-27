# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodIP; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodIP`.
  module Types::Api::Core::V1::PodIP
    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    abstract def ip : String?
    # :ditto:
    abstract def ip! : String
    # :ditto:
    abstract def ip? : String?
    # :ditto:
    abstract def ip=(value : String)
  end

  # IP address information for entries in the (plural) PodIPs field. Each entry includes:
  #    IP: An IP address allocated to the pod. Routable at least within the cluster.
  @[::K8S::Properties(
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: true, default: nil, read_only: false, description: "ip is an IP address (IPv4 or IPv6) assigned to the pod", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::PodIP < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::PodIP
    k8s_object_accessor("ip", ip : String, true, false, "ip is an IP address (IPv4 or IPv6) assigned to the pod")

    def initialize(*, ip : String? = nil)
      super()
      self.["ip"] = ip
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "ip", accessor: "ip", nilable: true, read_only: false, default: nil, kind: String},
    ])
  end
end
