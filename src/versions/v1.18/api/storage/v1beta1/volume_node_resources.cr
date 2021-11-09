# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # VolumeNodeResources is a set of resource limits for scheduling of volumes.
  class Api::Storage::V1beta1::VolumeNodeResources
    # Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is nil, then the supported number of volumes on this node is unbounded.
    property count : Int32 | Nil

    ::YAML.mapping({
      count: {type: Int32, nilable: true, key: "count", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      count: {type: Int32, nilable: true, key: "count", getter: false, setter: false},
    }, true)

    def initialize(*, @count : Int32 | Nil = nil)
    end
  end
end
