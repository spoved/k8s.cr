# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # VolumeError captures an error encountered during a volume operation.
  class Api::Storage::V1beta1::VolumeError
    include ::JSON::Serializable
    include ::YAML::Serializable

    # String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
    property message : String | Nil

    # Time the error was encountered.
    property time : Time | Nil

    ::YAML.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      time:    {type: Time, nilable: true, key: "time", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      time:    {type: Time, nilable: true, key: "time", getter: false, setter: false},
    }, true)

    def initialize(*, @message : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end
