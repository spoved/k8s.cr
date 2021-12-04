# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
  class Kubernetes::Api::V1::DownwardAPIProjection
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Items is a list of DownwardAPIVolume file
    property items : Array(Kubernetes::Api::V1::DownwardAPIVolumeFile) | Nil

    ::YAML.mapping({
      items: {type: Array(Kubernetes::Api::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      items: {type: Array(Kubernetes::Api::V1::DownwardAPIVolumeFile), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array | Nil = nil)
    end
  end
end
