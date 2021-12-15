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
    include ::JSON::Serializable::Unmapped
    include ::YAML::Serializable
    include ::YAML::Serializable::Unmapped

    # localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
    @[::JSON::Field(key: "localhostProfile", emit_null: false)]
    @[::YAML::Field(key: "localhostProfile", emit_null: false)]
    property localhost_profile : String | Nil

    # type indicates which kind of seccomp profile will be applied. Valid options are:
    #
    # Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
    #
    # Possible enum values:
    #  - `"Localhost"` indicates a profile defined in a file on the node should be used. The file's location relative to [<kubelet-root-dir>/seccomp.](<kubelet-root-dir>/seccomp.)
    #  - `"RuntimeDefault"` represents the default container runtime seccomp profile.
    #  - `"Unconfined"` indicates no seccomp profile is applied (A.K.A. unconfined).
    @[::JSON::Field(key: "type", emit_null: true)]
    @[::YAML::Field(key: "type", emit_null: true)]
    property type : String

    def initialize(*, @type : String, @localhost_profile : String | Nil = nil)
    end
  end
end
