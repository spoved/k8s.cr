# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # Describe a container image
  class Api::Core::V1::ContainerImage
    # Names by which this image is known. e.g. [["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"])
    property names : Array(String) | Nil

    # The size of the image in bytes.
    property size_bytes : Int32 | Nil

    ::YAML.mapping({
      names:      {type: Array(String), nilable: true, key: "names", getter: false, setter: false},
      size_bytes: {type: Int32, nilable: true, key: "sizeBytes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      names:      {type: Array(String), nilable: true, key: "names", getter: false, setter: false},
      size_bytes: {type: Int32, nilable: true, key: "sizeBytes", getter: false, setter: false},
    }, true)

    def initialize(*, @names : Array | Nil = nil, @size_bytes : Int32 | Nil = nil)
    end
  end
end
