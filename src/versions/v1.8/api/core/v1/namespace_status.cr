# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # NamespaceStatus is information about the current status of a Namespace.
  class Api::Core::V1::NamespaceStatus
    # Phase is the current lifecycle phase of the namespace. More info: [https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases](https://git.k8s.io/community/contributors/design-proposals/namespaces.md#phases)
    property phase : String | Nil

    ::YAML.mapping({
      phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    def initialize(*, @phase : String | Nil = nil)
    end
  end
end
