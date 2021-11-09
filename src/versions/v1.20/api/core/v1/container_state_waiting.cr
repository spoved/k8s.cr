# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"
require "json_mapping"
require "yaml_mapping"

module K8S
  # ContainerStateWaiting is a waiting state of a container.
  class Api::Core::V1::ContainerStateWaiting
    # Message regarding why the container is not yet running.
    property message : String | Nil

    # (brief) reason the container is not yet running.
    property reason : String | Nil

    ::YAML.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:  {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      message: {type: String, nilable: true, key: "message", getter: false, setter: false},
      reason:  {type: String, nilable: true, key: "reason", getter: false, setter: false},
    }, true)

    def initialize(*, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
