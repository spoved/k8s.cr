# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::PortStatus; end

module K8S
  # Namespace holding the types for `Api::Core::V1::PortStatus`.
  module Types::Api::Core::V1::PortStatus
    alias ValueType = String | Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [[foo.example.com/CamelCase.](foo.example.com/CamelCase.)]([foo.example.com/CamelCase.](foo.example.com/CamelCase.))
    abstract def error : String?
    # :ditto:
    abstract def error! : String
    # :ditto:
    abstract def error? : String?
    # :ditto:
    abstract def error=(value : String?)
    # Port is the port number of the service port of which status is recorded here
    abstract def port : Int32
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    #
    # Possible enum values:
    #  - `"SCTP"` is the SCTP protocol.
    #  - `"TCP"` is the TCP protocol.
    #  - `"UDP"` is the UDP protocol.
    abstract def protocol : String
    # :ditto:
    abstract def protocol! : String
    # :ditto:
    abstract def protocol? : String?
    # :ditto:
    abstract def protocol=(value : String)
  end

  #
  @[::K8S::Properties(
    error: {key: "error", accessor: "error", kind: "String", nilable: true, default: nil, read_only: false, description: "Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use\n  CamelCase names\n- cloud provider specific error values must have names that comply with the\n  format [foo.example.com/CamelCase.](foo.example.com/CamelCase.)"},
    port: {key: "port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Port is the port number of the service port of which status is recorded here"},
    protocol: {key: "protocol", accessor: "protocol", kind: "String", nilable: false, default: nil, read_only: false, description: "Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"\n\nPossible enum values:\n - `\"SCTP\"` is the SCTP protocol.\n - `\"TCP\"` is the TCP protocol.\n - `\"UDP\"` is the UDP protocol."},
  )]
  class Api::Core::V1::PortStatus < ::K8S::Types::Api::Core::V1::PortStatus::Instance
    include ::K8S::Types::Api::Core::V1::PortStatus
    include ::K8S::Kubernetes::Object

    # Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
    #   CamelCase names
    # - cloud provider specific error values must have names that comply with the
    #   format [[foo.example.com/CamelCase.](foo.example.com/CamelCase.)]([foo.example.com/CamelCase.](foo.example.com/CamelCase.))
    def error : String?
      self.["error"].as(String?)
    end

    # :ditto:
    def error! : String
      self.["error"].as(String?).not_nil!
    end

    # :ditto:
    def error? : String?
      self.["error"]?.as(String?)
    end

    # :ditto:
    def error=(value : String?)
      self.["error"] = value
    end

    # Port is the port number of the service port of which status is recorded here
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

    # Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP"
    #
    # Possible enum values:
    #  - `"SCTP"` is the SCTP protocol.
    #  - `"TCP"` is the TCP protocol.
    #  - `"UDP"` is the UDP protocol.
    def protocol : String
      self.["protocol"].as(String)
    end

    # :ditto:
    def protocol! : String
      self.["protocol"].as(String).not_nil!
    end

    # :ditto:
    def protocol? : String?
      self.["protocol"]?.as(String?)
    end

    # :ditto:
    def protocol=(value : String)
      self.["protocol"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "error", accessor: "error", nilable: true, read_only: false, default: nil, kind: String },
        { key: "port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32 },
        { key: "protocol", accessor: "protocol", nilable: false, read_only: false, default: nil, kind: String },
      ])
end
  end
end
