# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NamespaceStatus is information about the current status of a Namespace.
  @[::K8S::Properties(
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
  )]
  class Api::Core::V1::NamespaceStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    @[::JSON::Field(key: "phase", emit_null: false)]
    @[::YAML::Field(key: "phase", emit_null: false)]
    property phase : String | Nil

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
