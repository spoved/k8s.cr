# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion; end

require "./webhook_client_config"

module K8S
  # Namespace holding the types for `ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion`.
  module Types::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion
    alias ValueType = ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig | ::Array(String) | Nil
    alias Instance = ::K8S::Object(ValueType)

    # clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
    abstract def client_config : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?
    # :ditto:
    abstract def client_config! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig
    # :ditto:
    abstract def client_config? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?
    # :ditto:
    abstract def client_config=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?)
    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
    abstract def conversion_review_versions : ::Array(String)
    # :ditto:
    abstract def conversion_review_versions! : ::Array(String)
    # :ditto:
    abstract def conversion_review_versions? : ::Array(String)?
    # :ditto:
    abstract def conversion_review_versions=(value : ::Array(String))
  end

  # WebhookConversion describes how to call a conversion webhook
  @[::K8S::Properties(
    client_config: {key: "clientConfig", accessor: "client_config", kind: "::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig", nilable: true, default: nil, read_only: false, description: "clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
    conversion_review_versions: {key: "conversionReviewVersions", accessor: "conversion_review_versions", kind: "::Array(String)", nilable: false, default: nil, read_only: false, description: "conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.", x_kubernetes_embedded_resource: nil, x_kubernetes_int_or_string: nil, x_kubernetes_preserve_unknown_fields: nil, x_kubernetes_list_map_keys: nil, x_kubernetes_list_type: nil, x_kubernetes_map_type: nil},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion < ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion::Instance
    include ::K8S::Types::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion
    include ::K8S::Kubernetes::Object

    # clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
    def client_config : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?
      self.["clientConfig"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?)
    end

    # :ditto:
    def client_config! : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig
      self.["clientConfig"].as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?).not_nil!
    end

    # :ditto:
    def client_config? : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?
      self.["clientConfig"]?.as(::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?)
    end

    # :ditto:
    def client_config=(value : ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig?)
      self.["clientConfig"] = value
    end

    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
    def conversion_review_versions : ::Array(String)
      self.["conversionReviewVersions"].as(::Array(String))
    end

    # :ditto:
    def conversion_review_versions! : ::Array(String)
      self.["conversionReviewVersions"].as(::Array(String)).not_nil!
    end

    # :ditto:
    def conversion_review_versions? : ::Array(String)?
      self.["conversionReviewVersions"]?.as(::Array(String)?)
    end

    # :ditto:
    def conversion_review_versions=(value : ::Array(String))
      self.["conversionReviewVersions"] = value
    end

    macro finished
      ::K8S::Kubernetes::Resource.define_serialize_methods([
        { key: "clientConfig", accessor: "client_config", nilable: true, read_only: false, default: nil, kind: ::K8S::ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookClientConfig },
        { key: "conversionReviewVersions", accessor: "conversion_review_versions", nilable: false, read_only: false, default: nil, kind: ::Array(String) },
      ])
end
  end
end
