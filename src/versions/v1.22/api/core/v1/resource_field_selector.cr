# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # ResourceFieldSelector represents container resources (cpu, memory) and their output format
  @[::K8S::Properties(
    container_name: {type: String, nilable: true, key: "containerName", getter: false, setter: false},
    divisor: {type: Int32 | String, nilable: true, key: "divisor", getter: false, setter: false},
    resource: {type: String, nilable: false, key: "resource", getter: false, setter: false},
  )]
  class Api::Core::V1::ResourceFieldSelector
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Container name: required for volumes, optional for env vars
    @[::JSON::Field(key: "containerName")]
    @[::YAML::Field(key: "containerName")]
    property container_name : String | Nil

    # Specifies the output format of the exposed resources, defaults to "1"
    property divisor : Int32 | String | Nil

    # Required: resource to select
    property resource : String

    def initialize(*, @resource : String, @container_name : String | Nil = nil, @divisor : Int32 | String | Nil = nil)
    end
  end
end
