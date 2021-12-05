# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Affinity is a group of affinity scheduling rules.
  @[::K8S::Properties(
    node_affinity: {type: Api::Core::V1::NodeAffinity, nilable: true, key: "nodeAffinity", getter: false, setter: false},
    pod_affinity: {type: Api::Core::V1::PodAffinity, nilable: true, key: "podAffinity", getter: false, setter: false},
    pod_anti_affinity: {type: Api::Core::V1::PodAntiAffinity, nilable: true, key: "podAntiAffinity", getter: false, setter: false},
  )]
  class Api::Core::V1::Affinity
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Describes node affinity scheduling rules for the pod.
    @[::JSON::Field(key: "nodeAffinity")]
    @[::YAML::Field(key: "nodeAffinity")]
    property node_affinity : Api::Core::V1::NodeAffinity | Nil

    # Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s)).
    @[::JSON::Field(key: "podAffinity")]
    @[::YAML::Field(key: "podAffinity")]
    property pod_affinity : Api::Core::V1::PodAffinity | Nil

    # Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s)).
    @[::JSON::Field(key: "podAntiAffinity")]
    @[::YAML::Field(key: "podAntiAffinity")]
    property pod_anti_affinity : Api::Core::V1::PodAntiAffinity | Nil

    def initialize(*, @node_affinity : Api::Core::V1::NodeAffinity | Nil = nil, @pod_affinity : Api::Core::V1::PodAffinity | Nil = nil, @pod_anti_affinity : Api::Core::V1::PodAntiAffinity | Nil = nil)
    end
  end
end
