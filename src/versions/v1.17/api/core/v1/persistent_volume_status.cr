# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # PersistentVolumeStatus is the current status of a persistent volume.
  @[::K8S::Properties(
    message: {type: String, nilable: true, key: "message", getter: false, setter: false},
    phase: {type: String, nilable: true, key: "phase", getter: false, setter: false},
    reason: {type: String, nilable: true, key: "reason", getter: false, setter: false},
  )]
  class Api::Core::V1::PersistentVolumeStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A human-readable message indicating details about why the volume is in this state.
    property message : String | Nil

    # Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase](https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase)
    property phase : String | Nil

    # Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
    property reason : String | Nil

    def initialize(*, @message : String | Nil = nil, @phase : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
