# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion; end

require "./webhook_client_config"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    alias ValueType = String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil
    alias Instance = ::K8S::Object(ValueType)

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.
    abstract def strategy : String
    # :ditto:
    abstract def strategy! : String
    # :ditto:
    abstract def strategy? : String?
    # :ditto:
    abstract def strategy=(value : String)
    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    abstract def webhook_client_config : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?
    # :ditto:
    abstract def webhook_client_config! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig
    # :ditto:
    abstract def webhook_client_config? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?
    # :ditto:
    abstract def webhook_client_config=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?)
  end

  # CustomResourceConversion describes how to convert different versions of a CR.
  @[::K8S::Properties(
    strategy: {key: "strategy", accessor: "strategy", kind: "String", nilable: false, default: nil, read_only: false, description: "`strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option."},
    webhook_client_config: {key: "webhookClientConfig", accessor: "webhook_client_config", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig", nilable: true, default: nil, read_only: false, description: "`webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::K8S::Kubernetes::Object

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.
    def strategy : String
      self.["strategy"].as(String)
    end

    # :ditto:
    def strategy! : String
      self.["strategy"].as(String).not_nil!
    end

    # :ditto:
    def strategy? : String?
      self.["strategy"]?.as(String?)
    end

    # :ditto:
    def strategy=(value : String)
      self.["strategy"] = value
    end

    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    def webhook_client_config : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?
      self.["webhookClientConfig"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?)
    end

    # :ditto:
    def webhook_client_config! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig
      self.["webhookClientConfig"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?).not_nil!
    end

    # :ditto:
    def webhook_client_config? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?
      self.["webhookClientConfig"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?)
    end

    # :ditto:
    def webhook_client_config=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig?)
      self.["webhookClientConfig"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "strategy", accessor: "strategy", nilable: false, read_only: false, default: nil, kind: String },
        { key: "webhookClientConfig", accessor: "webhook_client_config", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig },
      ])
end
  end
end
