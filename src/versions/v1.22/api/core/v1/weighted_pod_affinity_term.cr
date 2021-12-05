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
    include ::YAML::Serializable

    # Required. A pod affinity term, associated with the corresponding weight.
    @[::JSON::Field(key: "podAffinityTerm")]
    @[::YAML::Field(key: "podAffinityTerm")]
    property pod_affinity_term : Api::Core::V1::PodAffinityTerm

    # weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    property weight : Int32

    def initialize(*, @pod_affinity_term : Api::Core::V1::PodAffinityTerm, @weight : Int32)
    end
  end
end
