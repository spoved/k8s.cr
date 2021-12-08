# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceConversion describes how to convert different versions of a CR.
  @[::K8S::Properties(
    strategy: {type: String, nilable: false, key: "strategy", getter: false, setter: false},
    webhook_client_config: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig, nilable: true, key: "webhookClientConfig", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceConversion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `strategy` specifies the conversion strategy. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the CR. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information is needed for this option.
    @[::JSON::Field(key: "strategy", emit_null: true)]
    @[::YAML::Field(key: "strategy", emit_null: true)]
    property strategy : String

    # `webhookClientConfig` is the instructions for how to call the webhook if strategy is `Webhook`. This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[::JSON::Field(key: "webhookClientConfig", emit_null: false)]
    @[::YAML::Field(key: "webhookClientConfig", emit_null: false)]
    property webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil

    def initialize(*, @strategy : String, @webhook_client_config : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::WebhookClientConfig | Nil = nil)
    end
  end
end
