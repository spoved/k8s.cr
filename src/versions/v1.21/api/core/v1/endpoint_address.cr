# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointAddress; end

require "./object_reference"

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointAddress`.
  module Types::Api::Core::V1::EndpointAddress
    alias ValueType = String | ::K8S::Api::Core::V1::ObjectReference | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The Hostname of this endpoint
    abstract def hostname : String?
    # :ditto:
    abstract def hostname! : String
    # :ditto:
    abstract def hostname? : String?
    # :ditto:
    abstract def hostname=(value : String?)
    # The IP of this endpoint. May not be loopback [[(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)]([(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.))
    abstract def ip : String
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
    abstract def node_name=(value : String?)
    # Reference to object providing the endpoint.
    abstract def target_ref : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref! : ::K8S::Api::Core::V1::ObjectReference
    # :ditto:
    abstract def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
    # :ditto:
    abstract def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
  end

  # EndpointAddress is a tuple that describes single IP address.
  @[::K8S::Properties(
    hostname: {key: "hostname", accessor: "hostname", kind: "String", nilable: true, default: nil, read_only: false, description: "The Hostname of this endpoint"},
    ip: {key: "ip", accessor: "ip", kind: "String", nilable: false, default: nil, read_only: false, description: "The IP of this endpoint. May not be loopback [(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)"},
    node_name: {key: "nodeName", accessor: "node_name", kind: "String", nilable: true, default: nil, read_only: false, description: "Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node."},
    target_ref: {key: "targetRef", accessor: "target_ref", kind: "::K8S::Api::Core::V1::ObjectReference", nilable: true, default: nil, read_only: false, description: "Reference to object providing the endpoint."},
  )]
  class Api::Core::V1::EndpointAddress < ::K8S::Types::Api::Core::V1::EndpointAddress::Instance
    include ::K8S::Types::Api::Core::V1::EndpointAddress
    include ::K8S::Kubernetes::Object

    # The Hostname of this endpoint
    def hostname : String?
      self.["hostname"].as(String?)
    end

    # :ditto:
    def hostname! : String
      self.["hostname"].as(String?).not_nil!
    end

    # :ditto:
    def hostname? : String?
      self.["hostname"]?.as(String?)
    end

    # :ditto:
    def hostname=(value : String?)
      self.["hostname"] = value
    end

    # The IP of this endpoint. May not be loopback [[(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.)]([(127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.]((127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.))
    def ip : String
      self.["ip"].as(String)
    end

    # :ditto:
    def ip! : String
      self.["ip"].as(String).not_nil!
    end

    # :ditto:
    def ip? : String?
      self.["ip"]?.as(String?)
    end

    # :ditto:
    def ip=(value : String)
      self.["ip"] = value
    end

    # Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
    def node_name : String?
      self.["nodeName"].as(String?)
    end

    # :ditto:
    def node_name! : String
      self.["nodeName"].as(String?).not_nil!
    end

    # :ditto:
    def node_name? : String?
      self.["nodeName"]?.as(String?)
    end

    # :ditto:
    def node_name=(value : String?)
      self.["nodeName"] = value
    end

    # Reference to object providing the endpoint.
    def target_ref : ::K8S::Api::Core::V1::ObjectReference?
      self.["targetRef"].as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def target_ref! : ::K8S::Api::Core::V1::ObjectReference
      self.["targetRef"].as(::K8S::Api::Core::V1::ObjectReference?).not_nil!
    end

    # :ditto:
    def target_ref? : ::K8S::Api::Core::V1::ObjectReference?
      self.["targetRef"]?.as(::K8S::Api::Core::V1::ObjectReference?)
    end

    # :ditto:
    def target_ref=(value : ::K8S::Api::Core::V1::ObjectReference?)
      self.["targetRef"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "hostname", accessor: "hostname", nilable: true, read_only: false, default: nil, kind: String },
        { key: "ip", accessor: "ip", nilable: false, read_only: false, default: nil, kind: String },
        { key: "nodeName", accessor: "node_name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "targetRef", accessor: "target_ref", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ObjectReference },
      ])
end
  end
end
