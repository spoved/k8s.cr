# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Core::V1::ClientIPConfig; end

module K8S
  # Namespace holding the types for `Api::Core::V1::ClientIPConfig`.
  module Types::Api::Core::V1::ClientIPConfig
    alias ValueType = Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
    abstract def timeout_seconds : Int32?
    # :ditto:
    abstract def timeout_seconds! : Int32
    # :ditto:
    abstract def timeout_seconds? : Int32?
    # :ditto:
    abstract def timeout_seconds=(value : Int32?)
  end

  # ClientIPConfig represents the configurations of Client IP based session affinity.
  @[::K8S::Properties(
    timeout_seconds: {key: "timeoutSeconds", accessor: "timeout_seconds", kind: "Int32", nilable: true, default: nil, read_only: false, description: "timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == \"ClientIP\". Default value is 10800(for 3 hours).", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Core::V1::ClientIPConfig < ::K8S::Types::Api::Core::V1::ClientIPConfig::Instance
    include ::K8S::Types::Api::Core::V1::ClientIPConfig
    include ::K8S::Kubernetes::Object

    # timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
    def timeout_seconds : Int32?
      self.["timeoutSeconds"].as(Int32?)
    end

    # :ditto:
    def timeout_seconds! : Int32
      self.["timeoutSeconds"].as(Int32?).not_nil!
    end

    # :ditto:
    def timeout_seconds? : Int32?
      self.["timeoutSeconds"]?.as(Int32?)
    end

    # :ditto:
    def timeout_seconds=(value : Int32?)
      self.["timeoutSeconds"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "timeoutSeconds", accessor: "timeout_seconds", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
