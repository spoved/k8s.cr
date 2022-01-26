# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::Api::Auditregistration::V1alpha1::Webhook; end

require "./webhook_client_config"
require "./webhook_throttle_config"

module K8S
  # Namespace holding the types for `Api::Auditregistration::V1alpha1::Webhook`.
  module Types::Api::Auditregistration::V1alpha1::Webhook
    # ClientConfig holds the connection parameters for the webhook required
    abstract def client_config : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig
    # :ditto:
    abstract def client_config! : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig
    # :ditto:
    abstract def client_config? : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig?
    # :ditto:
    abstract def client_config=(value : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig)
    # Throttle holds the options for throttling the webhook
    abstract def throttle : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?
    # :ditto:
    abstract def throttle! : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig
    # :ditto:
    abstract def throttle? : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?
    # :ditto:
    abstract def throttle=(value : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?)
  end

  # Webhook holds the configuration of the webhook
  @[::K8S::Properties(
    client_config: {key: "clientConfig", accessor: "client_config", kind: "::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig", nilable: false, default: nil, read_only: false, description: "ClientConfig holds the connection parameters for the webhook required", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    throttle: {key: "throttle", accessor: "throttle", kind: "::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig", nilable: true, default: nil, read_only: false, description: "Throttle holds the options for throttling the webhook", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class Api::Auditregistration::V1alpha1::Webhook < ::K8S::GenericObject
    include ::K8S::Types::Api::Auditregistration::V1alpha1::Webhook

    # ClientConfig holds the connection parameters for the webhook required
    def client_config : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig)
    end

    # :ditto:
    def client_config! : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig).not_nil!
    end

    # :ditto:
    def client_config? : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig?
      self.["clientConfig"]?.as(::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig?)
    end

    # :ditto:
    def client_config=(value : ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig)
      self.["clientConfig"] = value
    end

    # Throttle holds the options for throttling the webhook
    def throttle : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?
      self.["throttle"].as(::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?)
    end

    # :ditto:
    def throttle! : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig
      self.["throttle"].as(::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?).not_nil!
    end

    # :ditto:
    def throttle? : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?
      self.["throttle"]?.as(::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?)
    end

    # :ditto:
    def throttle=(value : ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig?)
      self.["throttle"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clientConfig", accessor: "client_config", nilable: false, read_only: false, default: nil, kind: ::K8S::Api::Auditregistration::V1alpha1::WebhookClientConfig },
        { key: "throttle", accessor: "throttle", nilable: true, read_only: false, default: nil, kind: ::K8S::Api::Auditregistration::V1alpha1::WebhookThrottleConfig },
      ])
end
  end
end
