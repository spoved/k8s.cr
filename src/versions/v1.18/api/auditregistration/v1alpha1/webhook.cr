# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Webhook holds the configuration of the webhook
  @[::K8S::Properties(
    client_config: {type: Api::Auditregistration::V1alpha1::WebhookClientConfig, nilable: false, key: "clientConfig", getter: false, setter: false},
    throttle: {type: Api::Auditregistration::V1alpha1::WebhookThrottleConfig, nilable: true, key: "throttle", getter: false, setter: false},
  )]
  class Api::Auditregistration::V1alpha1::Webhook
    include ::JSON::Serializable
    include ::YAML::Serializable

    # ClientConfig holds the connection parameters for the webhook required
    @[::JSON::Field(key: "clientConfig")]
    @[::YAML::Field(key: "clientConfig")]
    property client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig

    # Throttle holds the options for throttling the webhook
    property throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil

    def initialize(*, @client_config : Api::Auditregistration::V1alpha1::WebhookClientConfig, @throttle : Api::Auditregistration::V1alpha1::WebhookThrottleConfig | Nil = nil)
    end
  end
end
