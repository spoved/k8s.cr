# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceQuotaStatus defines the enforced hard limits and observed use.
  @[::K8S::Properties(
    hard: {type: Hash(String, Int32 | String), nilable: true, key: "hard", getter: false, setter: false},
    used: {type: Hash(String, Int32 | String), nilable: true, key: "used", getter: false, setter: false},
  )]
  class Api::Core::V1::ResourceQuotaStatus
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Hard is the set of enforced hard limits for each named resource. More info: [https://kubernetes.io/docs/concepts/policy/resource-quotas/](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
    @[::JSON::Field(key: "hard", emit_null: false)]
    @[::YAML::Field(key: "hard", emit_null: false)]
    property hard : Hash(String, Int32 | String) | Nil

    # Used is the current observed total usage of the resource in the namespace.
    @[::JSON::Field(key: "used", emit_null: false)]
    @[::YAML::Field(key: "used", emit_null: false)]
    property used : Hash(String, Int32 | String) | Nil

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @used : Hash(String, String) | Nil = nil)
    end
  end
end
