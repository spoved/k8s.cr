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
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # Container name: required for volumes, optional for env vars
    @[::JSON::Field(key: "containerName", emit_null: false)]
    @[::YAML::Field(key: "containerName", emit_null: false)]
    property container_name : String | Nil

    # Specifies the output format of the exposed resources, defaults to "1"
    @[::JSON::Field(key: "divisor", emit_null: false)]
    @[::YAML::Field(key: "divisor", emit_null: false)]
    property divisor : Int32 | String | Nil

    # Required: resource to select
    @[::JSON::Field(key: "resource", emit_null: true)]
    @[::YAML::Field(key: "resource", emit_null: true)]
    property resource : String

    def initialize(*, @resource : String, @container_name : String | Nil = nil, @divisor : Int32 | String | Nil = nil)
    end
  end
end
