# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::Handler; end

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

module K8S
  # Namespace holding the types for `Api::Core::V1::Handler`.
  module Types::Api::Core::V1::Handler
    alias ValueType = ::K8S::Api::Core::V1::ExecAction | ::K8S::Api::Core::V1::HTTPGetAction | ::K8S::Api::Core::V1::TCPSocketAction | Nil
    alias Instance = ::K8S::Object(ValueType)

    # One and only one of the following should be specified. Exec specifies the action to take.
    abstract def exec : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec! : ::K8S::Api::Core::V1::ExecAction
    # :ditto:
    abstract def exec? : ::K8S::Api::Core::V1::ExecAction?
    # :ditto:
    abstract def exec=(value : ::K8S::Api::Core::V1::ExecAction?)
    # HTTPGet specifies the http request to perform.
    abstract def http_get : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get! : ::K8S::Api::Core::V1::HTTPGetAction
    # :ditto:
    abstract def http_get? : ::K8S::Api::Core::V1::HTTPGetAction?
    # :ditto:
    abstract def http_get=(value : ::K8S::Api::Core::V1::HTTPGetAction?)
    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    abstract def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
    # :ditto:
    abstract def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction?)
  end

  # Handler defines a specific action that should be taken
  @[::K8S::Properties(
    exec: {key: "exec", accessor: "exec", kind: "::K8S::Api::Core::V1::ExecAction", nilable: true, default: nil, read_only: false, description: "One and only one of the following should be specified. Exec specifies the action to take."},
    http_get: {key: "httpGet", accessor: "http_get", kind: "::K8S::Api::Core::V1::HTTPGetAction", nilable: true, default: nil, read_only: false, description: "HTTPGet specifies the http request to perform."},
    tcp_socket: {key: "tcpSocket", accessor: "tcp_socket", kind: "::K8S::Api::Core::V1::TCPSocketAction", nilable: true, default: nil, read_only: false, description: "TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported"},
  )]
  class Api::Core::V1::Handler < ::K8S::Types::Api::Core::V1::Handler::Instance
    include ::K8S::Types::Api::Core::V1::Handler
    include ::K8S::Kubernetes::Object

    # One and only one of the following should be specified. Exec specifies the action to take.
    def exec : ::K8S::Api::Core::V1::ExecAction?
      self.["exec"].as(::K8S::Api::Core::V1::ExecAction?)
    end

    # :ditto:
    def exec! : ::K8S::Api::Core::V1::ExecAction
      self.["exec"].as(::K8S::Api::Core::V1::ExecAction?).not_nil!
    end

    # :ditto:
    def exec? : ::K8S::Api::Core::V1::ExecAction?
      self.["exec"]?.as(::K8S::Api::Core::V1::ExecAction?)
    end

    # :ditto:
    def exec=(value : ::K8S::Api::Core::V1::ExecAction?)
      self.["exec"] = value
    end

    # HTTPGet specifies the http request to perform.
    def http_get : ::K8S::Api::Core::V1::HTTPGetAction?
      self.["httpGet"].as(::K8S::Api::Core::V1::HTTPGetAction?)
    end

    # :ditto:
    def http_get! : ::K8S::Api::Core::V1::HTTPGetAction
      self.["httpGet"].as(::K8S::Api::Core::V1::HTTPGetAction?).not_nil!
    end

    # :ditto:
    def http_get? : ::K8S::Api::Core::V1::HTTPGetAction?
      self.["httpGet"]?.as(::K8S::Api::Core::V1::HTTPGetAction?)
    end

    # :ditto:
    def http_get=(value : ::K8S::Api::Core::V1::HTTPGetAction?)
      self.["httpGet"] = value
    end

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
      self.["tcpSocket"].as(::K8S::Api::Core::V1::TCPSocketAction?)
    end

    # :ditto:
    def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
      self.["tcpSocket"].as(::K8S::Api::Core::V1::TCPSocketAction?).not_nil!
    end

    # :ditto:
    def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
      self.["tcpSocket"]?.as(::K8S::Api::Core::V1::TCPSocketAction?)
    end

    # :ditto:
    def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction?)
      self.["tcpSocket"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "exec", accessor: "exec", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ExecAction },
        { key: "httpGet", accessor: "http_get", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::HTTPGetAction },
        { key: "tcpSocket", accessor: "tcp_socket", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::TCPSocketAction },
      ])
end
  end
end
