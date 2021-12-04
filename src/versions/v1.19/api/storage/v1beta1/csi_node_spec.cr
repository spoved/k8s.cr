# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # CSINodeSpec holds information about the specification of all CSI drivers installed on a node
  class Api::Storage::V1beta1::CSINodeSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
    property drivers : Array(Api::Storage::V1beta1::CSINodeDriver)

    ::YAML.mapping({
      drivers: {type: Array(Api::Storage::V1beta1::CSINodeDriver), nilable: false, key: "drivers", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      drivers: {type: Array(Api::Storage::V1beta1::CSINodeDriver), nilable: false, key: "drivers", getter: false, setter: false},
    }, true)

    def initialize(*, @drivers : Array)
    end
  end
end
