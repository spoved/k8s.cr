# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # WebhookThrottleConfig holds the configuration for throttling events
  @[::K8S::Properties(
    burst: {type: Int32, nilable: true, key: "burst", getter: false, setter: false},
    qps: {type: Int32, nilable: true, key: "qps", getter: false, setter: false},
  )]
  class Api::Auditregistration::V1alpha1::WebhookThrottleConfig
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
    @[::JSON::Field(key: "burst", emit_null: false)]
    @[::YAML::Field(key: "burst", emit_null: false)]
    property burst : Int32 | Nil

    # ThrottleQPS maximum number of batches per second default 10 QPS
    @[::JSON::Field(key: "qps", emit_null: false)]
    @[::YAML::Field(key: "qps", emit_null: false)]
    property qps : Int32 | Nil

    def initialize(*, @burst : Int32 | Nil = nil, @qps : Int32 | Nil = nil)
    end
  end
end
