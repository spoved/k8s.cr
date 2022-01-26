# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::DaemonEndpoint; end

module K8S
  # Namespace holding the types for `Api::Core::V1::DaemonEndpoint`.
  module Types::Api::Core::V1::DaemonEndpoint
    # Port number of the given endpoint.
    abstract def port : Int32
    # :ditto:
    abstract def port! : Int32
    # :ditto:
    abstract def port? : Int32?
    # :ditto:
    abstract def port=(value : Int32)
  end

  # DaemonEndpoint contains information about a single Daemon endpoint.
  @[::K8S::Properties(
    port: {key: "Port", accessor: "port", kind: "Int32", nilable: false, default: nil, read_only: false, description: "Port number of the given endpoint.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::DaemonEndpoint < ::K8S::GenericObject
    include ::K8S::Types::Api::Core::V1::DaemonEndpoint

    # Port number of the given endpoint.
    def port : Int32
      self.["Port"].as(Int32)
    end

    # :ditto:
    def port! : Int32
      self.["Port"].as(Int32).not_nil!
    end

    # :ditto:
    def port? : Int32?
      self.["Port"]?.as(Int32?)
    end

    # :ditto:
    def port=(value : Int32)
      self.["Port"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "Port", accessor: "port", nilable: false, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
