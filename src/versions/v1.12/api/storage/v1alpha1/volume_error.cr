# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # VolumeError captures an error encountered during a volume operation.
  @[::K8S::Properties(
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    time: {type: Time, nilable: true, key: "time", getter: false, setter: false},
  )]
  class Api::Storage::V1alpha1::VolumeError
    include ::JSON::Serializable
    include ::YAML::Serializable

    # String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
    @[::JSON::Field(key: "message", emit_null: false)]
    @[::YAML::Field(key: "message", emit_null: false)]
    property message : String | Nil

    # Time the error was encountered.
    @[::JSON::Field(key: "time", emit_null: false)]
    @[::YAML::Field(key: "time", emit_null: false)]
    property time : Time | Nil

    def initialize(*, @message : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end