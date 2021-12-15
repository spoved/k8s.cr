# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
  @[::K8S::Properties(
    required: {type: Api::Core::V1::NodeSelector, nilable: true, key: "required", getter: false, setter: false},
  )]
  class Api::Core::V1::VolumeNodeAffinity
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Required specifies hard node constraints that must be met.
    @[::JSON::Field(key: "required", emit_null: false)]
    @[::YAML::Field(key: "required", emit_null: false)]
    property required : Api::Core::V1::NodeSelector | Nil

    def initialize(*, @required : Api::Core::V1::NodeSelector | Nil = nil)
    end
  end
end
