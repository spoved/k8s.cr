# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # PriorityLevelConfigurationSpec specifies the configuration of a priority level.
  class Api::Flowcontrol::V1beta1::PriorityLevelConfigurationSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
    property limited : Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration | Nil

    # `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    property type : String

    ::YAML.mapping({
      limited: {type: Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration, nilable: true, key: "limited", getter: false, setter: false},
      type:    {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      limited: {type: Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration, nilable: true, key: "limited", getter: false, setter: false},
      type:    {type: String, nilable: false, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @type : String, @limited : Api::Flowcontrol::V1beta1::LimitedPriorityLevelConfiguration | Nil = nil)
    end
  end
end
