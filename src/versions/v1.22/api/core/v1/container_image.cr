# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Describe a container image
  @[::K8S::Properties(
    names: {type: Array(String), nilable: true, key: "names", getter: false, setter: false},
    size_bytes: {type: Int32, nilable: true, key: "sizeBytes", getter: false, setter: false},
  )]
  class Api::Core::V1::ContainerImage
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Names by which this image is known. e.g. [["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"])
    @[::JSON::Field(key: "names", emit_null: false)]
    @[::YAML::Field(key: "names", emit_null: false)]
    property names : Array(String) | Nil

    # The size of the image in bytes.
    @[::JSON::Field(key: "sizeBytes", emit_null: false)]
    @[::YAML::Field(key: "sizeBytes", emit_null: false)]
    property size_bytes : Int32 | Nil

    def initialize(*, @names : Array(String) | Nil = nil, @size_bytes : Int32 | Nil = nil)
    end
  end
end
