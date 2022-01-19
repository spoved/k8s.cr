# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PodIP; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PodIP`.
  module Types::Api::Core::V1::PodIP
    alias ValueType = String | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    abstract def ip : String?
    # :ditto:
    abstract def ip! : String
    # :ditto:
    abstract def ip? : String?
    # :ditto:
    abstract def ip=(value : String?)
  end

  # IP address information for entries in the (plural) PodIPs field. Each entry includes:
  #    IP: An IP address allocated to the pod. Routable at least within the cluster.
  @[::K8S::Properties(
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: true, default: nil, read_only: false, description: "ip is an IP address (IPv4 or IPv6) assigned to the pod"},
  )]
  class Api::Core::V1::PodIP < ::K8S::Types::Api::Core::V1::PodIP::Instance
    include ::K8S::Types::Api::Core::V1::PodIP
    include ::K8S::Kubernetes::Object

    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    def ip : String?
      self.["ip"].as(String?)
    end

    # :ditto:
    def ip! : String
      self.["ip"].as(String?).not_nil!
    end

    # :ditto:
    def ip? : String?
      self.["ip"]?.as(String?)
    end

    # :ditto:
    def ip=(value : String?)
      self.["ip"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "ip", accessor: "ip", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
