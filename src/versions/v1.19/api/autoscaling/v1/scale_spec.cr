# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ScaleSpec describes the attributes of a scale subresource.
  @[::K8S::Properties(
    replicas: {type: Int32, nilable: true, key: "replicas", getter: false, setter: false},
  )]
  class Api::Autoscaling::V1::ScaleSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # desired number of instances for the scaled object.
    @[::JSON::Field(key: "replicas", emit_null: false)]
    @[::YAML::Field(key: "replicas", emit_null: false)]
    property replicas : Int32 | Nil

    def initialize(*, @replicas : Int32 | Nil = nil)
    end
  end
end
