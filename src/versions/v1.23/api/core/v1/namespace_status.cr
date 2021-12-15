# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NamespaceStatus is information about the current status of a Namespace.
  @[::K8S::Properties(
    conditions: {type: Array(Api::Core::V1::NamespaceCondition), nilable: true, key: "conditions", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
  )]
  class Api::Core::V1::NamespaceStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Represents the latest available observations of a namespace's current state.
    @[::JSON::Field(key: "conditions", emit_null: false)]
    @[::YAML::Field(key: "conditions", emit_null: false)]
    property conditions : Array(Api::Core::V1::NamespaceCondition) | Nil

    # Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    #
    # Possible enum values:
    #  - `"Active"` means the namespace is available for use in the system
    #  - `"Terminating"` means the namespace is undergoing graceful termination
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    def initialize(*, @conditions : Array | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
