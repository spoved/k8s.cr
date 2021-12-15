# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # HostPortRange defines a range of host ports that will be enabled by a policy for pods to use.  It requires both the start and end to be defined.
  @[::K8S::Properties(
    max: {type: Int32, nilable: false, key: "max", getter: false, setter: false},
    min: {type: Int32, nilable: false, key: "min", getter: false, setter: false},
  )]
  class Api::Policy::V1beta1::HostPortRange
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # max is the end of the range, inclusive.
    @[::JSON::Field(key: "max", emit_null: true)]
    @[::YAML::Field(key: "max", emit_null: true)]
    property max : Int32

    # min is the start of the range, inclusive.
    @[::JSON::Field(key: "min", emit_null: true)]
    @[::YAML::Field(key: "min", emit_null: true)]
    property min : Int32

    def initialize(*, @max : Int32, @min : Int32)
    end
  end
end
