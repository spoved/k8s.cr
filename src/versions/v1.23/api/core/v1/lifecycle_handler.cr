# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::LifecycleHandler; end

require "./exec_action"
require "./http_get_action"
require "./tcp_socket_action"

module K8S
  # Namespace holding the types for `Api::Core::V1::LifecycleHandler`.
  module Types::Api::Core::V1::LifecycleHandler
    # Exec specifies the action to take.
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
    # Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified.
    abstract def tcp_socket : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket! : ::K8S::Api::Core::V1::TCPSocketAction
    # :ditto:
    abstract def tcp_socket? : ::K8S::Api::Core::V1::TCPSocketAction?
    # :ditto:
    abstract def tcp_socket=(value : ::K8S::Api::Core::V1::TCPSocketAction?)
  end

  # LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One and only one of the fields, except TCPSocket must be specified.
  @[::K8S::Properties(
    exec: {key: "exec", accessor: "exec", kind: "::K8S::Api::Core::V1::ExecAction", nilable: true, default: nil, read_only: false, description: "Exec specifies the action to take.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    http_get: {key: "httpGet", accessor: "http_get", kind: "::K8S::Api::Core::V1::HTTPGetAction", nilable: true, default: nil, read_only: false, description: "HTTPGet specifies the http request to perform.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    tcp_socket: {key: "tcpSocket", accessor: "tcp_socket", kind: "::K8S::Api::Core::V1::TCPSocketAction", nilable: true, default: nil, read_only: false, description: "Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::LifecycleHandler < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::LifecycleHandler

    # Exec specifies the action to take.
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

    # Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward compatibility. There are no validation of this field and lifecycle hooks will fail in runtime when tcp handler is specified.
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
