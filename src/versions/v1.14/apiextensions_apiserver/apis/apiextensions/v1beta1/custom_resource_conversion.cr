# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion; end

require "./webhook_client_config"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    # ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`.
    abstract def conversion_review_versions : ::Array(String)?
    # :ditto:
    abstract def conversion_review_versions! : ::Array(String)
    # :ditto:
    abstract def conversion_review_versions? : ::Array(String)?
    # :ditto:
    abstract def conversion_review_versions=(value : ::Array(String)?)
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
    conversion_review_versions: {key: "conversionReviewVersions", accessor: "conversion_review_versions", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    strategy: {key: "strategy", accessor: "strategy", kind: "String", nilable: false, default: nil, read_only: false, description: "`strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    webhook_client_config: {key: "webhookClientConfig", accessor: "webhook_client_config", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig", nilable: true, default: nil, read_only: false, description: "`webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion < ::K8S::GenericObject
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion

    # ConversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, conversion will fail for this object. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Default to `['v1beta1']`.
    def conversion_review_versions : ::Array(String)?
      self.["conversionReviewVersions"].as(::Array(String)?)
    end

    # :ditto:
    def conversion_review_versions! : ::Array(String)
      self.["conversionReviewVersions"].as(::Array(String)?).not_nil!
    end

    # :ditto:
    def conversion_review_versions? : ::Array(String)?
      self.["conversionReviewVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def conversion_review_versions=(value : ::Array(String)?)
      self.["conversionReviewVersions"] = value
    end

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
        { key: "conversionReviewVersions", accessor: "conversion_review_versions", nilable: true, read_only: false, default: nil, kind: ::Array(String) },
        { key: "strategy", accessor: "strategy", nilable: false, read_only: false, default: nil, kind: String },
        { key: "webhookClientConfig", accessor: "webhook_client_config", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig },
      ])
end
  end
end
