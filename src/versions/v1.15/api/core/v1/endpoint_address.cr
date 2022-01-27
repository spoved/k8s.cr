# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointAddress; end

require "./object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointAddress`.
  module Types::Api::Core::V1::EndpointAddress
    # The Hostname of this endpoint
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String)
    # The IP of this endpoint. May not be loopback [[(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)]([(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.))
    abstract def ip : String?
    # :ditto:
    abstract def ip! : String
    # :ditto:
    abstract def ip? : String?
    # :ditto:
    abstract def ip=(value : String)
    # Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    abstract def node_name : String?
    # :ditto:
    abstract def node_name! : String
    # :ditto:
    abstract def node_name? : String?
    # :ditto:
    abstract def node_name=(value : String)
    # Reference to object providing the endpoint.
    abstract def target_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference)
  end

  # EndpointAddress is a tuple that describes single IP address.
  @[::K8S::Properties(
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "The Hostname of this endpoint", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: false, default: nil, read_only: false, description: "The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    target_ref: {key: "targetRef", accessor: "target_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "Reference to object providing the endpoint.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::EndpointAddress < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::EndpointAddress
    k8s_object_accessor("hostname", hostname : String, true, false, "The Hostname of this endpoint")
    k8s_object_accessor("ip", ip : String, false, false, "The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)")
    k8s_object_accessor("nodeName", node_name : String, true, false, "Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.")
    k8s_object_accessor("targetRef", target_ref : ::K8S::Api::Core::V1::ObjectReference, true, false, "Reference to object providing the endpoint.")

    def initialize(*, hostname : String? = nil, ip : String? = nil, node_name : String? = nil, target_ref : ::K8S::Api::Core::V1::ObjectReference? = nil)
      super()
      self.["hostname"] = hostname
      self.["ip"] = ip
      self.["nodeName"] = node_name
      self.["targetRef"] = target_ref
    end

    ::K8S::Kubernetes::Resource.define_serialize_methods([
      {key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String},
      {key: "ip", accessor: "ip", nilable: false, read_only: false, default: nil, kind: String},
      {key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String},
      {key: "targetRef", accessor: "target_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference},
    ])
  end
end
