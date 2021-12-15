# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CustomResourceConversion describes how to convert different versions of a CR.
  @[::K8S::Properties(
    strategy: {type: String, nilable: false, key: "strategy", getter: false, setter: false},
    webhook: {type: ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion, nilable: true, key: "webhook", getter: false, setter: false},
  )]
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceConversion
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information
    #   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
    @[::JSON::Field(key: "strategy", emit_null: true)]
    @[::YAML::Field(key: "strategy", emit_null: true)]
    property strategy : String

    # webhook describes how to call the conversion webhook. Required when `strategy` is set to `Webhook`.
    @[::JSON::Field(key: "webhook", emit_null: false)]
    @[::YAML::Field(key: "webhook", emit_null: false)]
    property webhook : ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion | Nil

    def initialize(*, @strategy : String, @webhook : ApiextensionsApiserver::Apis::Apiextensions::V1::WebhookConversion | Nil = nil)
    end
  end
end
