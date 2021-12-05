# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
  @[::K8S::Properties(
    preference: {type: Api::Core::V1::NodeSelectorTerm, nilable: false, key: "preference", getter: false, setter: false},
    weight: {type: Int32, nilable: false, key: "weight", getter: false, setter: false},
  )]
  class Api::Core::V1::PreferredSchedulingTerm
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A node selector term, associated with the corresponding weight.
    property preference : Api::Core::V1::NodeSelectorTerm

    # Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    property weight : Int32

    def initialize(*, @preference : Api::Core::V1::NodeSelectorTerm, @weight : Int32)
    end
  end
end
