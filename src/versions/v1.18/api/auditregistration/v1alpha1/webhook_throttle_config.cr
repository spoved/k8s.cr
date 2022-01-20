# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Auditregistration::V1alpha1::WebhookThrottleConfig; end

module K8S
  # Namespace holding the types for `Api::Auditregistration::V1alpha1::WebhookThrottleConfig`.
  module Types::Api::Auditregistration::V1alpha1::WebhookThrottleConfig
    alias ValueType = Int32 | Nil
    alias Instance = ::K8S::Object(ValueType)

    # ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
    abstract def burst : Int32?
    # :ditto:
    abstract def burst! : Int32
    # :ditto:
    abstract def burst? : Int32?
    # :ditto:
    abstract def burst=(value : Int32?)
    # ThrottleQPS maximum number of batches per second default 10 QPS
    abstract def qps : Int32?
    # :ditto:
    abstract def qps! : Int32
    # :ditto:
    abstract def qps? : Int32?
    # :ditto:
    abstract def qps=(value : Int32?)
  end

  # WebhookThrottleConfig holds the configuration for throttling events
  @[::K8S::Properties(
    burst: {key: "burst", accessor: "burst", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    qps: {key: "qps", accessor: "qps", kind: "Int32", nilable: true, default: nil, read_only: false, description: "ThrottleQPS maximum number of batches per second default 10 QPS", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Auditregistration::V1alpha1::WebhookThrottleConfig < ::K8S::Types::Api::Auditregistration::V1alpha1::WebhookThrottleConfig::Instance
    include ::K8S::Types::Api::Auditregistration::V1alpha1::WebhookThrottleConfig
    include ::K8S::Kubernetes::Object

    # ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
    def burst : Int32?
      self.["burst"].as(Int32?)
    end

    # :ditto:
    def burst! : Int32
      self.["burst"].as(Int32?).not_nil!
    end

    # :ditto:
    def burst? : Int32?
      self.["burst"]?.as(Int32?)
    end

    # :ditto:
    def burst=(value : Int32?)
      self.["burst"] = value
    end

    # ThrottleQPS maximum number of batches per second default 10 QPS
    def qps : Int32?
      self.["qps"].as(Int32?)
    end

    # :ditto:
    def qps! : Int32
      self.["qps"].as(Int32?).not_nil!
    end

    # :ditto:
    def qps? : Int32?
      self.["qps"]?.as(Int32?)
    end

    # :ditto:
    def qps=(value : Int32?)
      self.["qps"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "burst", accessor: "burst", nilable: true, read_only: false, default: nil, kind: Int32 },
        { key: "qps", accessor: "qps", nilable: true, read_only: false, default: nil, kind: Int32 },
      ])
end
  end
end
