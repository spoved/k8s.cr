# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # LimitRangeSpec defines a [min/max usage limit for resources that match on kind.](min/max usage limit for resources that match on kind.)
  @[::K8S::Properties(
    limits: {type: Array(Api::Core::V1::LimitRangeItem), nilable: false, key: "limits", getter: false, setter: false},
  )]
  class Api::Core::V1::LimitRangeSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Limits is the list of LimitRangeItem objects that are enforced.
    @[::JSON::Field(key: "limits", emit_null: true)]
    @[::YAML::Field(key: "limits", emit_null: true)]
    property limits : Array(Api::Core::V1::LimitRangeItem)

    def initialize(*, @limits : Array(Api::Core::V1::LimitRangeItem))
    end
  end
end
