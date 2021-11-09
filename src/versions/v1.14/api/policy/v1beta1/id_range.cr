# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # IDRange provides a [min/max of an allowed range of IDs.](min/max of an allowed range of IDs.)
  class Api::Policy::V1beta1::IDRange
    # max is the end of the range, inclusive.
    property max : Int32

    # min is the start of the range, inclusive.
    property min : Int32

    ::YAML.mapping({
      max: {type: Int32, nilable: false, key: "max", getter: false, setter: false},
      min: {type: Int32, nilable: false, key: "min", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      max: {type: Int32, nilable: false, key: "max", getter: false, setter: false},
      min: {type: Int32, nilable: false, key: "min", getter: false, setter: false},
    }, true)

    def initialize(*, @max : Int32, @min : Int32)
    end
  end
end
