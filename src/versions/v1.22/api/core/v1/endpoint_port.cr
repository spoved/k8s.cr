# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::EndpointPort; end

module K8S
  # Namespace holding the types for `Api::Core::V1::EndpointPort`.
  module Types::Api::Core::V1::EndpointPort
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [[http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.)](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.))
    abstract def app_protocol : String?
    # :ditto:
    abstract def app_protocol! : String
    # :ditto:
    abstract def app_protocol? : String?
    # :ditto:
    abstract def app_protocol=(value : String?)
    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    abstract def name : String?
    # :ditto:
    abstract def name! : String
    # :ditto:
    abstract def name? : String?
    # :ditto:
    abstract def name=(value : String?)
    # The port number of the endpoint.
    abstract def port : Int32
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    abstract def protocol : String?
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String?)
  end

  # EndpointPort is a tuple that describes a single port.
  @[::K8S::Properties(
    app_protocol: {key: "appProtocol", accessor: "app_protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.)"},
    name: {key: "name", accessor: "name", kind: "String", nilable: true, default: nil, read_only: false, description: "The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined."},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "The port number of the endpoint."},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: true, default: nil, read_only: false, description: "The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP."},
  )]
  class Api::Core::V1::EndpointPort < ::K8S::Types::Api::Core::V1::EndpointPort::Instance
    include ::K8S::Types::Api::Core::V1::EndpointPort
    include ::K8S::Kubernetes::Object

    # The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and [[http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.)](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.](http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.))
    def app_protocol : String?
      self.["appProtocol"].as(String?)
    end

    # :ditto:
    def app_protocol! : String
      self.["appProtocol"].as(String?).not_nil!
    end

    # :ditto:
    def app_protocol? : String?
      self.["appProtocol"]?.as(String?)
    end

    # :ditto:
    def app_protocol=(value : String?)
      self.["appProtocol"] = value
    end

    # The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    def name : String?
      self.["name"].as(String?)
    end

    # :ditto:
    def name! : String
      self.["name"].as(String?).not_nil!
    end

    # :ditto:
    def name? : String?
      self.["name"]?.as(String?)
    end

    # :ditto:
    def name=(value : String?)
      self.["name"] = value
    end

    # The port number of the endpoint.
    def port : Int32
      self.["port"].as(Int32)
    end

    # :ditto:
    def port! : Int32
      self.["port"].as(Int32).not_nil!
    end

    # :ditto:
    def port? : Int32?
      self.["port"]?.as(Int32?)
    end

    # :ditto:
    def port=(value : Int32)
      self.["port"] = value
    end

    # The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    def protocol : String?
      self.["protocol"].as(String?)
    end

    # :ditto:
    def protocol! : String
      self.["protocol"].as(String?).not_nil!
    end

    # :ditto:
    def protocol? : String?
      self.["protocol"]?.as(String?)
    end

    # :ditto:
    def protocol=(value : String?)
      self.["protocol"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "appProtocol", accessor: "app_protocol", nilable: true, read_only: false, default: nil, kind: String },
        { key: "name", accessor: "name", nilable: true, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "protocol", accessor: "protocol", nilable: true, read_only: false, default: nil, kind: String },
      ])
end
  end
end
