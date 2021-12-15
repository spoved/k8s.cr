# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PodReadinessGate contains the reference to a pod condition
  @[::K8S::Properties(
    condition_type: {type: String, nilable: false, key: "conditionType", getter: false, setter: false},
  )]
  class Api::Core::V1::PodReadinessGate
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # ConditionType refers to a condition in the pod's condition list with matching type.
    #
    # Possible enum values:
    #  - `"ContainersReady"` indicates whether all containers in the pod are ready.
    #  - `"Initialized"` means that all init containers in the pod have started successfully.
    #  - `"PodScheduled"` represents status of the scheduling process for this pod.
    #  - `"Ready"` means the pod is able to service requests and should be added to the load balancing pools of all matching services.
    @[::JSON::Field(key: "conditionType", emit_null: true)]
    @[::YAML::Field(key: "conditionType", emit_null: true)]
    property condition_type : String

    def initialize(*, @condition_type : String)
    end
  end
end
