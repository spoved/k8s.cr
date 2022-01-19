# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion; end

require "./webhook_client_config"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    alias ValueType = ::Array(String) | String | ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil
    alias Instance = ::K8S::Object(ValueType)

    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
    abstract def conversion_review_versions : ::Array(String)?
    # :ditto:
    abstract def conversion_review_versions! : ::Array(String)
    # :ditto:
    abstract def conversion_review_versions? : ::Array(String)?
    # :ditto:
    abstract def conversion_review_versions=(value : ::Array(String)?)
    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set.
    abstract def strategy : String
    # :ditto:
    abstract def strategy! : String
    # :ditto:
    abstract def strategy? : String?
    # :ditto:
    abstract def strategy=(value : String)
    # webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
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
    conversion_review_versions: {key: "conversionReviewVersions", accessor: "conversion_review_versions", kind: "::Array(String)", nilable: true, default: nil, read_only: false, description: "conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `[\"v1beta1\"]`."},
    strategy: {key: "strategy", accessor: "strategy", kind: "String", nilable: false, default: nil, read_only: false, description: "strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information\n  is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set."},
    webhook_client_config: {key: "webhookClientConfig", accessor: "webhook_client_config", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig", nilable: true, default: nil, read_only: false, description: "webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`."},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::K8S::Kubernetes::Object

    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
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

    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set.
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

    # webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
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
