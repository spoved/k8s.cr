# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module K8S
  # SeccompProfile defines a [pod/container's seccomp profile settings. Only one profile source may be set.](pod/container's seccomp profile settings. Only one profile source may be set.)
  @[::K8S::Properties(
    localhost_profile: {type: String, nilable: true, key: "localhostProfile", getter: false, setter: false},
    type: {type: String, nilable: false, key: "type", getter: false, setter: false},
  )]
  class Api::Core::V1::SeccompProfile
    include ::JSON::Serializable
    include ::YAML::Serializable

    # localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
    @[::JSON::Field(key: "localhostProfile")]
    @[::YAML::Field(key: "localhostProfile")]
    property localhost_profile : String | Nil

    # type indicates which kind of seccomp profile will be applied. Valid options are:
    #
    # Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
    property type : String

    def initialize(*, @type : String, @localhost_profile : String | Nil = nil)
    end
  end
end
