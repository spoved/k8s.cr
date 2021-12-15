# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # Policy defines the configuration of how audit events are logged
  @[::K8S::Properties(
    level: {type: String, nilable: false, key: "level", getter: false, setter: false},
    stages: {type: Array(String), nilable: true, key: "stages", getter: false, setter: false},
  )]
  class Api::Auditregistration::V1alpha1::Policy
    include ::JSON::Serializable
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # The Level that all requests are recorded at. available options: None, Metadata, Request, RequestResponse required
    @[::JSON::Field(key: "level", emit_null: true)]
    @[::YAML::Field(key: "level", emit_null: true)]
    property level : String

    # Stages is a list of stages for which events are created.
    @[::JSON::Field(key: "stages", emit_null: false)]
    @[::YAML::Field(key: "stages", emit_null: false)]
    property stages : Array(String) | Nil

    def initialize(*, @level : String, @stages : Array | Nil = nil)
    end
  end
end
