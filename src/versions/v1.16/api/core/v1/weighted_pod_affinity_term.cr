# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to find the most preferred node(s)
  @[::K8S::Properties(
    pod_affinity_term: {type: Api::Core::V1::PodAffinityTerm, nilable: false, key: "podAffinityTerm", getter: false, setter: false},
    weight: {type: Int32, nilable: false, key: "weight", getter: false, setter: false},
  )]
  class Api::Core::V1::WeightedPodAffinityTerm
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required. A pod affinity term, associated with the corresponding weight.
    @[::JSON::Field(key: "podAffinityTerm", emit_null: true)]
    @[::YAML::Field(key: "podAffinityTerm", emit_null: true)]
    property pod_affinity_term : Api::Core::V1::PodAffinityTerm

    # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    @[::JSON::Field(key: "weight", emit_null: true)]
    @[::YAML::Field(key: "weight", emit_null: true)]
    property weight : Int32

    def initialize(*, @pod_affinity_term : Api::Core::V1::PodAffinityTerm, @weight : Int32)
    end
  end
end
