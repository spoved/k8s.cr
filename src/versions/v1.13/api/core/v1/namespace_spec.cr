# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # NamespaceSpec describes the attributes on a Namespace.
  class Api::Core::V1::NamespaceSpec
    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    property finalizers : Array(String) | Nil

    ::YAML.mapping({
      finalizers: {type: Array(String), nilable: true, key: "finalizers", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      finalizers: {type: Array(String), nilable: true, key: "finalizers", getter: false, setter: false},
    }, true)

    def initialize(*, @finalizers : Array | Nil = nil)
    end
  end
end
