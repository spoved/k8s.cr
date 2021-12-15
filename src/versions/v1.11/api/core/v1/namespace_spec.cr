# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # NamespaceSpec describes the attributes on a Namespace.
  @[::K8S::Properties(
    finalizers: {type: Array(String), nilable: true, key: "finalizers", getter: false, setter: false},
  )]
  class Api::Core::V1::NamespaceSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    @[::JSON::Field(key: "finalizers", emit_null: false)]
    @[::YAML::Field(key: "finalizers", emit_null: false)]
    property finalizers : Array(String) | Nil

    def initialize(*, @finalizers : Array | Nil = nil)
    end
  end
end
