# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceConversion describes how to convert different versions of a CR.
  @[::K8S::Properties(
    conversion_review_versions: {type: Array(String), nilable: true, key: "conversionReviewVersions", getter: false, setter: false},
    strategy: {type: String, nilable: false, key: "strategy", getter: false, setter: false},
    webhook_client_config: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, nilable: true, key: "webhookClientConfig", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail. Defaults to `["v1beta1"]`.
    @[::JSON::Field(key: "conversionReviewVersions", emit_null: false)]
    @[::YAML::Field(key: "conversionReviewVersions", emit_null: false)]
    property conversion_review_versions : Array(String) | Nil

    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhookClientConfig to be set.
    @[::JSON::Field(key: "strategy", emit_null: true)]
    @[::YAML::Field(key: "strategy", emit_null: true)]
    property strategy : String

    # webhookClientConfig is the instructions for how to call the webhook if strategy is `Webhook`. Required when `strategy` is set to `Webhook`.
    @[::JSON::Field(key: "webhookClientConfig", emit_null: false)]
    @[::YAML::Field(key: "webhookClientConfig", emit_null: false)]
    property webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil

    def initialize(*, @strategy : String, @conversion_review_versions : Array | Nil = nil, @webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil = nil)
    end
  end
end
