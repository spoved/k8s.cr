# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # CSINodeSpec holds information about the specification of all CSI drivers installed on a node
  @[::K8S::Properties(
    drivers: {type: Array(Api::Storage::V1::CSINodeDriver), nilable: true, key: "drivers", getter: false, setter: false},
  )]
  class Api::Storage::V1::CSINodeSpec
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    @[::JSON::Field(key: "drivers", emit_null: false)]
    @[::YAML::Field(key: "drivers", emit_null: false)]
    property drivers : Array(Api::Storage::V1::CSINodeDriver) | Nil

    def initialize(*, @drivers : Array | Nil = nil)
    end
  end
end
