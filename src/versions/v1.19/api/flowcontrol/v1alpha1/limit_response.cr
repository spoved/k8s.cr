# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LimitResponse defines how to handle requests that can not be executed right now.
  @[::K8S::Properties(
    queuing: {type: Api::Flowcontrol::V1alpha1::QueuingConfiguration, nilable: true, key: "queuing", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Flowcontrol::V1alpha1::LimitResponse
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # `queuing` holds the configuration parameters for queuing. This field may be non-empty only if `type` is `"Queue"`.
    @[::JSON::Field(key: "queuing", emit_null: false)]
    @[::YAML::Field(key: "queuing", emit_null: false)]
    property queuing : Api::Flowcontrol::V1alpha1::QueuingConfiguration | Nil

    # `type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. "Reject" means that requests that can not be executed upon arrival are rejected. Required.
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String, @queuing : Api::Flowcontrol::V1alpha1::QueuingConfiguration | Nil = nil)
    end
  end
end
