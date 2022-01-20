# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::SessionAffinityConfig; end

require "./client_ip_config"

module K8S
  # Namespace holding the types for `Api::Core::V1::SessionAffinityConfig`.
  module Types::Api::Core::V1::SessionAffinityConfig
    alias ValueType = ::K8S::Api::Core::V1::ClientIPConfig | Nil
    alias Instance = ::K8S::Object(ValueType)

    # clientIP contains the configurations of Client IP based session affinity.
    abstract def client_ip : ::K8S::Api::Core::V1::ClientIPConfig?
    # :ditto:
    abstract def client_ip! : ::K8S::Api::Core::V1::ClientIPConfig
    # :ditto:
    abstract def client_ip? : ::K8S::Api::Core::V1::ClientIPConfig?
    # :ditto:
    abstract def client_ip=(value : ::K8S::Api::Core::V1::ClientIPConfig?)
  end

  # SessionAffinityConfig represents the configurations of session affinity.
  @[::K8S::Properties(
    client_ip: {key: "clientIP", accessor: "client_ip", kind: "::K8S::Api::Core::V1::ClientIPConfig", nilable: true, default: nil, read_only: false, description: "clientIP contains the configurations of Client IP based session affinity.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::SessionAffinityConfig < ::K8S::Types::Api::Core::V1::SessionAffinityConfig::Instance
    include ::K8S::Types::Api::Core::V1::SessionAffinityConfig
    include ::K8S::Kubernetes::Object

    # clientIP contains the configurations of Client IP based session affinity.
    def client_ip : ::K8S::Api::Core::V1::ClientIPConfig?
      self.["clientIP"].as(::K8S::Api::Core::V1::ClientIPConfig?)
    end

    # :ditto:
    def client_ip! : ::K8S::Api::Core::V1::ClientIPConfig
      self.["clientIP"].as(::K8S::Api::Core::V1::ClientIPConfig?).not_nil!
    end

    # :ditto:
    def client_ip? : ::K8S::Api::Core::V1::ClientIPConfig?
      self.["clientIP"]?.as(::K8S::Api::Core::V1::ClientIPConfig?)
    end

    # :ditto:
    def client_ip=(value : ::K8S::Api::Core::V1::ClientIPConfig?)
      self.["clientIP"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clientIP", accessor: "client_ip", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Core::V1::ClientIPConfig },
      ])
end
  end
end
