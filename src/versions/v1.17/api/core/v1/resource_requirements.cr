# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceRequirements describes the compute resource requirements.
  @[::K8S::Properties(
    limits: {type: Hash(String, String), nilable: true, key: "limits", getter: false, setter: false},
    requests: {type: Hash(String, String), nilable: true, key: "requests", getter: false, setter: false},
  )]
  class Api::Core::V1::ResourceRequirements
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Limits describes the maximum amount of compute resources allowed. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)
    property limits : Hash(String, String) | Nil

    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/)
    property requests : Hash(String, String) | Nil

    def initialize(*, @limits : Hash(String, String) | Nil = nil, @requests : Hash(String, String) | Nil = nil)
    end
  end
end
